import assert from 'node:assert/strict';
import nodeTest from 'node:test';
import { invoke_method } from '@calcit/procs';
import * as c from '../js-out/calcit.core.mjs';
import { comp_home, comp_container } from '../js-out/app.comp.container.mjs';
import { comp_list, comp_map, comp_vector, comp_data } from '../js-out/app.comp.edn-grid.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { as_element, child_pair_value, component_$q_, component_tree, element_children, element_event } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';
import { event__GT_edn } from '../js-out/respo.util.format.mjs';
import { with_memo_frame } from '../js-out/respo.memo.mjs';

const test = (name, run) => nodeTest(name, () => with_memo_frame(run));
import { new_reel } from '../js-out/reel.typed.mjs';

const t = c.init_tags(['event', 'children', 'click', 'input', 'some', 'value', 'content', 'data', 'error', 'page', 'grid', 'states', 'cursor', 'root', 'a', 'node', 'store', 'base']);
const map = c._$n__$M_;
const noError = c._PCT__$o__$o_(c.Option, c.newTag('none'));
const field = (v, k) => invoke_method('unwrap', c.get(v, k));
const nth = (v, i) => invoke_method('unwrap', c.nth(v, i));
const en = c._$n_enum_$o_nth;
function handler(node, kind, label = '') {
  if (component_$q_(node)) return handler(invoke_method('unwrap', component_tree(node)), kind, label);
  const element = as_element(node);
  if (!label || make_string(node).includes(label)) {
    const fn = c.get(element_event(element), kind);
    if (en(fn, 0) === t.some) return invoke_method('unwrap', fn);
  }
  const children = element_children(element);
  for (let i = 0; i < c.count(children); i++) {
    const found = handler(child_pair_value(nth(children, i)), kind, label);
    if (found) return found;
  }
}
function dispatch(fn, event = event__GT_edn(new Event('click'))) {
  assert.equal(typeof fn, 'function');
  const ops = [];
  fn(event, (...args) => { assert.equal(args.length, 1); ops.push(args[0]); });
  assert.equal(ops.length, 1);
  return ops[0];
}
for (const [label, text] of [['Parse JSON', '{"a":[1,2]}'], ['Parse EDN', '{} (:a ([] 1 2))']]) {
  test(`${label} keeps parsed data and switches to grid page`, () => {
    const op = dispatch(handler(comp_home(text, noError), t.click, label));
    const next = updater(store, op, 'parse', 1);
    assert.equal(en(op, 0), t.data);
    assert.equal(field(next, t.page), t.grid);
    assert.equal(field(next, t.error), null);
    assert.deepEqual(c.to_js_data(field(next, t.data)), { a: [1, 2] });
  });
}
test('invalid JSON dispatches an error without replacing previous data', () => {
  const initial = c.assoc(store, t.data, 'kept');
  const op = dispatch(handler(comp_home('{broken', noError), t.click, 'Parse JSON'));
  assert.equal(en(op, 0), t.error);
  const next = updater(initial, op, 'error', 1);
  assert.equal(field(next, t.data), 'kept');
  assert.ok(field(next, t.error).length > 0);
});
test('text input sends a single content Enum', () => {
  const native = new Event('input');
  Object.defineProperty(native, 'target', { value: { value: 'fixture' } });
  const op = dispatch(handler(comp_home('', noError), t.input), event__GT_edn(native));
  assert.equal(field(updater(store, op, 'input', 1), t.content), 'fixture');
});
for (const [name, render, data] of [['list', comp_list, c._$L_(1, 2)], ['vector', comp_vector, c._$L_(1, 2)], ['map', comp_map, map(t.a, 1)]]) {
  test(`${name} fold/unfold preserves top-level store and nested cursor`, () => {
    const cursor = c._$L_(t.root);
    let states = map(t.cursor, cursor);
    const op = dispatch(handler(render(states, data), t.click));
    assert.equal(en(op, 0), t.states);
    assert.ok(c._$e_(en(op, 1), cursor));
    assert.equal(en(op, 2), true);
    let next = updater(store, op, 'fold', 1);
    assert.equal(field(field(field(next, t.states), t.root), t.data), true);
    assert.equal(field(next, t.page), field(store, t.page));
    assert.equal(c._$n_map_$o_contains_$q_(field(next, t.states), t.states), false);
    states = c.assoc(field(field(next, t.states), t.root), t.cursor, cursor);
    assert.ok(make_string(render(states, data)).includes('folded'));
    const unfold = dispatch(handler(render(states, data), t.click, 'folded'));
    next = updater(next, unfold, 'unfold', 2);
    assert.equal(field(field(field(next, t.states), t.root), t.data), false);
  });
}
test('nested collections and scalar values render without runtime Option errors', () => {
  const data = map(t.a, c._$L_('fixture-value', 42, true, null, c._$n__$M_(t.a, 'nested')));
  const html = make_string(comp_data(map(t.cursor, c._$L_()), data));
  for (const value of ['fixture-value', '42', 'true', 'nil', 'nested']) assert.ok(html.includes(value));
});
test('mixed numeric, string and Tag state branches survive full grid rendering', () => {
  const states = map(0, map(t.data, true), 'value-branch', map(t.data, false), t.root, map(t.data, false));
  const next = c.assoc(c.assoc(c.assoc(store, t.states, states), t.data, map(t.a, c._$L_('mixed-state'))), t.page, t.grid);
  const html = make_string(comp_container(new_reel(next), () => {}));
  assert.ok(html.includes('mixed-state'));
  assert.equal(field(field(states, 0), t.data), true);
  assert.equal(field(field(states, 'value-branch'), t.data), false);
});
