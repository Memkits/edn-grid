
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### 使用者影响

升级到正式 Calcit 和 `@calcit/procs` **0.38.0** 后，请重新安装依赖、编译并刷新。JSON/EDN 解析、错误提示、折叠与展开和 `edn-grid` Map 存档沿用原有行为。恢复存档后才注册离页保存。

`Scalar` union 描述 String、Number、Tag、Symbol 和 Bool 的显示，任意 EDN 和异构状态路径继续适用。Map 的 Bool/List 键由 Respo 的 `data-states` / `data-list->` 处理，按索引渲染的集合使用 `ChildPair`。导航操作使用具名 `Page`，存档仍保存原 Tag。折叠状态为 Bool，折叠样式使用 Respo CSS 值 union。

依赖使用正式 Reel **0.10.0**、Respo **0.19.5**、UI **0.15.2**、Feather **0.6.3**、JS-FFI **0.2.13**，传递 Router **0.12.2**。

### Development

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru fix --workflow strict --verify
calcit calcit.cirru test --tag unit --require-match
yarn build
node --test scripts/grid-regression.test.mjs
yarn dev
```

Build and dev compile Calcit once before starting Vite. To keep generated JS
updated while editing Calcit, run `calcit calcit.cirru -w` in another terminal.
`VITE_BASE_URL` selects the build's asset base, defaulting to `./` locally.
新解析候选 npm 版本的包龄仍为一小时；正常复用 yarn.lock 不重新等待。

### Deployment

The workflow builds frontend assets with the `https://cos-sh.tiye.me/Memkits/edn-grid/` base URL and uploads `dist/` to COS using the released v1.2.0 action’s built-in HTML reference and public verification. No separate CDN verification script is needed. Pull requests use an isolated `pr/<number>/<run-id>/<attempt>/` prefix. The original `dist/*` rsync deployment to `rsync-user@tiye.me:/web-assets/repo/Memkits/edn-grid` remains unchanged on `main` pushes; COS does not include server code.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
