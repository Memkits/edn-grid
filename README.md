
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### Development

使用已发布的配对 Calcit/procs **0.30.1**、
Caps 0.1.1、Node.js 24 和 Yarn 4.18.0。依赖使用正式 Reel 0.6.41、
Respo 0.16.124、UI 0.8.0、Feather 0.4.30 和 js-ffi 0.2.5。

JSON/EDN 解析、错误展示、折叠/展开，以及原 `edn-grid` 存档格式和恢复行为保持不变。
启动先恢复存档并完成首次渲染，再注册退出保存。解析失败、非 Map 或恢复后渲染失败会中止本次启动，
不注册自动保存，不删除或覆盖旧存档；需修复存档后再重新加载。正常输入解析失败仍在页面展示错误，
不替换已有数据。
嵌套状态的 key 可以是数字、字符串或 tag，类型按真实混合状态树声明；
任意 EDN 数据仍保留 Dynamic，在事件文本、页面 tag、折叠 Bool 和游标消费处做实际检查。
非法类型会在相应边界失败，不用静态断言或 unsafe 冒充验证，不放宽质量预算。

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

保留现有 9 项 Node 回归（含混合 key 状态渲染）和 5 项附带测试，名称、输入和期望值不变。
附带测试原来的 `=` 仅返回 Bool；改为 `assert=`，使不相等确实令测试失败，比较的原输入与期望不变。
源码中的 Option、Map 合并和 List foldl 改用方法；现有 JS fixture 使用配对 procs 的方法分派。
Map 子节点拼接的 reducer 显式声明真实 `List<List<Dynamic>>` 输入/输出，保留 key 与渲染节点的异构 pair。
不增加测试组、检查脚本、进程管理器或额外 COS 校验；真实任意 EDN/混合状态边界继续明确声明，不伪造零 Dynamic。

Only `calcit.cirru` and `deps.cirru` are canonical; do not restore the retired
`compact.cirru` and `package.cirru` files. Browser helpers use the same js-ffi
version as Respo/UI/Feather, with the required storage, DOM and event APIs.

### Deployment

The workflow builds frontend assets with the `https://cos-sh.tiye.me/Memkits/edn-grid/` base URL and uploads `dist/` to COS using the released v1.2.0 action’s built-in HTML reference and public verification. No separate CDN verification script is needed. Pull requests use an isolated `pr/<number>/<run-id>/<attempt>/` prefix. The original `dist/*` rsync deployment to `rsync-user@tiye.me:/web-assets/repo/Memkits/edn-grid` remains unchanged on `main` pushes; COS does not include server code.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
