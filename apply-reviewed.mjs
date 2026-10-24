import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...a)=>execFileSync('calcit',a,{encoding:'utf8',maxBuffer:32e6,stdio:['ignore','pipe','pipe']});
const norm=v=>Array.isArray(v)?v.map(norm):v&&typeof v==='object'?Object.fromEntries(Object.entries(v).map(([k,x])=>[k,k==='__edn_set'?x.map(norm).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):norm(x)])):v;
const q=(...a)=>norm(JSON.parse(run('query',...a,'--format','json')).data);
const blob=()=>execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}).trim();
mkdirSync('acceptance',{recursive:true});assert.equal(run('-v').trim(),'0.30.1');assert.equal(blob(),'44bbe9114e15ed1e945e335d644bb8f4da01b491');writeFileSync('acceptance/agent-contract.txt',run('docs','agents','--contract'));
const before=norm(JSON.parse(readFileSync('reviewed.json','utf8'))),expected=structuredClone(before),ops=[],evidence=[];
assert.equal(before.length,29);assert.equal(before.reduce((n,d)=>n+d.tests.length,0),5);assert.equal(before.reduce((n,d)=>n+d.examples.length,0),0);
const config=q('config'),namespaces=q('ns').namespaces.map(n=>q('ns',n));
const renames={'foldl':'.foldl','merge':'.merge','option:unwrap':'.unwrap','option:unwrap-or':'.unwrap-or'};let codeCalls=0,testCalls=0;
function walk(x,path,id,region){
  if(!Array.isArray(x)||['quote','quasiquote',';','comment','defmacro'].includes(x[0]))return;
  if(renames[x[0]]){
    if(region==='code'){
      assert.deepEqual(JSON.parse(run('tree','show',id,'--path','@'+path.join('.'),'--format','json')).tree,x);
      if(x[0]==='merge'){assert.ok(['ui/global','ui/flex','ui/textarea','ui/center'].includes(x[1]));const d=q('def','respo-ui.core/'+x[1].slice(3));assert.deepEqual(d.schema,['::',"'Map","'Tag","'Dynamic"]);evidence.push({id,path,receiver:x[1],schema:d.schema});}
      if(x[0]==='foldl'){assert.equal(id,'app.comp.edn-grid/comp-map');assert.deepEqual(x[1].slice(0,3),['->','data',['.to-list']]);const m=q('type',"'List").methods.find(m=>m.name==='.foldl');assert.equal(m.definition,'calcit.core/foldl');evidence.push({id,path,receiver:structuredClone(x[1]),method:m});}
      ops.push(['tree','replace',id,'--path','@'+[...path,0].join('.'),'--input-format','json-ast','--code',JSON.stringify(renames[x[0]]),'--expect','quote '+x[0]]);codeCalls++;
    }else{assert.equal(id,'app.updater/updater');assert.equal(x[0],'option:unwrap');testCalls++;}
    x[0]=renames[x[0]];
  }
  x.forEach((v,i)=>walk(v,[...path,i],id,region));
}
for(const d of expected){assert.deepEqual(q('def',d.id),before.find(x=>x.id===d.id));walk(d.code,[],d.id,'code');for(const t of d.tests){const old=structuredClone(t.code);walk(t.code,[],d.id,t.name);if(JSON.stringify(old)!==JSON.stringify(t.code))ops.push(['edit','add-test',d.id,t.name,'--overwrite','--tags',t.tags.join(','),'--input-format','json-ast','--code',JSON.stringify(t.code)]);}}
assert.equal(codeCalls,21);assert.equal(testCalls,5);
const main=expected.find(d=>d.id==='app.main/main!'),old=structuredClone(main.code);
assert.equal(old.length,11);assert.deepEqual(old[4],['render-app!']);assert.equal(old[7][0],'js-ffi.browser/add-event-listener!');assert.equal(old[7][1],'|beforeunload');assert.deepEqual(old[8][1],['js-ffi.browser/storage-get','|edn-grid']);
const restore=structuredClone(old[8]);assert.deepEqual(restore[2][1][2][1],['if',['map?','parsed'],['dispatch!',['::',':hydrate-storage',['decode-map-as','parsed',['::',"'Map","'Tag","'Dynamic"]]]]]);
restore[2][1][2][1]=['dispatch!',['::',':hydrate-storage',['decode-map-as','parsed',['::',"'Map","'Tag","'Dynamic"]]]];
assert.deepEqual(restore[2][1][3][1],['println','|Storage-migration-failed:','message']);restore[2][1][3][1]=['raise',['str','|Cannot restore edn-grid; existing archive is kept: ','message']];
main.code=[...old.slice(0,4),restore,...old.slice(4,8),...old.slice(9)];
assert.deepEqual(JSON.parse(run('tree','show',main.id,'--path','@8','--format','json')).tree,old[8]);
ops.push(['tree','replace',main.id,'--path','@8','--input-format','json-ast','--code',JSON.stringify(restore)]);
for(const index of [8,7,6,5])ops.push(['tree','swap',main.id,'--path','@'+index,'--with','prev']);
assert.equal(ops.length,31);writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/receivers.json',JSON.stringify(evidence,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'],preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);writeFileSync('acceptance/transaction-preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/transaction-applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after=[];for(const ns of namespaces){const names=run('query','defs',ns.namespace).split('\n').filter(x=>/^  \S/.test(x)).map(x=>x.trim().split(' ')[0]);assert.equal(names.length,ns.definition_count);for(const n of names)after.push(q('def',`${ns.namespace}/${n}`));}assert.deepEqual(after,expected);assert.deepEqual(q('config'),config);assert.deepEqual(q('ns').namespaces.map(n=>q('ns',n)),namespaces);
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));writeFileSync('acceptance/snapshot-after-blob.txt',blob());writeFileSync('acceptance/summary.json',JSON.stringify({definitions:29,attachedTests:5,examples:0,codeCalls,testCalls,operations:ops.length,unsafe:0,preserved:'All schemas/FFI/metadata/imports/config and original test names/tags/input/expectations unchanged. Only26callheads and main startup restoration-before-render/watch/devtools/exit-save. Parse failure/non-map/invalid render now abort before autosave registration, archive not deleted or reset. Dynamic arbitrary EDN and mixed state keys retained; no extra definitions/qualitybudget/checker/fix rule.'},null,2));
