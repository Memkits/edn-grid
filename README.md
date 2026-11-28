
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### 使用者影响

升级到正式 Calcit 和 `@calcit/procs` **0.48.0** 后，请重新安装依赖、编译并刷新。JSON/EDN 解析、错误提示、折叠与展开和 `edn-grid` Map 存档沿用原有行为。恢复存档后才注册离页保存。

`Scalar` union 描述 String、Number、Tag、Symbol 和 Bool 的显示，开放 EDN 数据和异构状态路径保留，已知 nil 键限制见下文。Map 的 Bool/List 键由 Respo 的 `data-states` / `data-list->` 处理，按索引渲染的集合使用 `ChildPair`。导航操作使用具名 `Page`，存档仍保存原 Tag。折叠状态为 Bool，折叠样式使用 Respo CSS 值 union。

渲染入口保留传入值、列表元素、集合元素和 Map 键值各自的类型参数。开放 EDN 与存档边界仍接收原数据形状。 组件暂保留 Respo 的 `States` 别名；Calcit 对该旧值式别名提示退役，迁移与类型兼容问题见 [Respo #385](https://github.com/Respo/respo.calcit/issues/385)。

直接依赖为 Reel **0.11.11**、Respo **0.20.1**、UI **0.16.7**、Feather **0.6.15** 和 JS-FFI **0.2.26**；具体版本以 `deps.cirru` 为准。状态更新使用可保留根 Map 类型的接口，递归 GridKey 支持非 nil 标量和集合键，修复列表键下嵌套集合渲染失败；存档格式不变。集合键内部含 nil 时仍无法通过路径解码，尚未支持，见 [#44](https://github.com/Memkits/edn-grid/issues/44)。

### Development

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru fix --workflow strict --verify
calcit calcit.cirru test --tag unit --require-match
yarn build
calcit --init-fn respo.render.html/make-string --reload-fn respo.render.html/make-string js
node --test scripts/grid-regression.test.mjs
yarn dev
```

Build and dev compile Calcit once before starting Vite. To keep generated JS
updated while editing Calcit, run `calcit calcit.cirru -w` in another terminal.
`VITE_BASE_URL` selects the build's asset base, defaulting to `./` locally.
新解析候选 npm 版本的包龄仍为一小时；正常复用 yarn.lock 不重新等待。

### Deployment

The workflow builds frontend assets with the `https://cos-sh.tiye.me/Memkits/edn-grid/` base URL and uploads `dist/` to COS using the released v1.3.0 action’s built-in HTML reference and public verification. No separate CDN verification script is needed. Pull requests use an isolated `pr/<number>/<run-id>/<attempt>/` prefix. The original `dist/*` rsync deployment to `rsync-user@tiye.me:/web-assets/repo/Memkits/edn-grid` remains unchanged on `main` pushes; COS does not include server code.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
