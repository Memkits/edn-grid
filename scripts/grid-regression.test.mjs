import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { comp_home } from '../js-out/app.comp.container.mjs';
import { comp_list, comp_map, comp_vector, comp_data } from '../js-out/app.comp.edn-grid.mjs';
import { store } from '../js-out/app.schema.mjs';
import { updater } from '../js-out/app.updater.mjs';
import { component_$q_, component_tree } from '../js-out/respo.util.detect.mjs';
import { make_string } from '../js-out/respo.render.html.mjs';

const t = c.init_tags(['event', 'children', 'click', 'input', 'some', 'value', 'content', 'data', 'error', 'page', 'grid', 'states', 'cursor', 'root', 'a']);
const map = c._$n__$M_;
const field = (v, k) => c.option_$o_unwrap(c.get(v, k));
const nth = (v, i) => c.option_$o_unwrap(c.nth(v, i));
const en = c._$n_enum_$o_nth;
function handler(node, kind, label = '') {
  if (component_$q_(node)) return handler(c.option_$o_unwrap(component_tree(node)), kind, label);
  const event = c.get(node, t.event);
  if (en(event, 0) === t.some && (!label || make_string(node).includes(label))) {
    const fn = c.get(c.option_$o_unwrap(event), kind);
    if (en(fn, 0) === t.some) return c.option_$o_unwrap(fn);
  }
  const children = c.get(node, t.children);
  if (en(children, 0) === t.some) {
    const pairs = c.option_$o_unwrap(children);
    for (let i = 0; i < c.count(pairs); i++) {
      const found = handler(nth(nth(pairs, i), 1), kind, label);
      if (found) return found;
    }
  }
}
function dispatch(fn, event = null) {
  assert.equal(typeof fn, 'function');
  const ops = [];
  fn(event, (...args) => { assert.equal(args.length, 1); ops.push(args[0]); });
  assert.equal(ops.length, 1);
  return ops[0];
}
for (const [label, text] of [['Parse JSON', '{"a":[1,2]}'], ['Parse EDN', '{} (:a ([] 1 2))']]) {
  test(`${label} keeps parsed data and switches to grid page`, () => {
    const op = dispatch(handler(comp_home(text, null), t.click, label));
    const next = updater(store, op, 'parse', 1);
    assert.equal(en(op, 0), t.data);
    assert.equal(field(next, t.page), t.grid);
    assert.equal(field(next, t.error), null);
    assert.deepEqual(c.to_js_data(field(next, t.data)), { a: [1, 2] });
  });
}
test('invalid JSON dispatches an error without replacing previous data', () => {
  const initial = c.assoc(store, t.data, 'kept');
  const op = dispatch(handler(comp_home('{broken', null), t.click, 'Parse JSON'));
  assert.equal(en(op, 0), t.error);
  const next = updater(initial, op, 'error', 1);
  assert.equal(field(next, t.data), 'kept');
  assert.ok(field(next, t.error).length > 0);
});
test('text input sends a single content Enum', () => {
  const op = dispatch(handler(comp_home('', null), t.input), map(t.value, 'fixture'));
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
