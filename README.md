
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### 使用者影响与工具链

配对正式 Calcit CLI / `@calcit/procs` **0.34.2**，Caps 0.1.1、Node.js 24、Yarn 4.18.0。
模块同步正式 Reel **0.9.0**、Respo **0.19.2**、UI **0.14.1**、Feather **0.6.0**、JS-FFI **0.2.10**，传递 Router **0.11.2**。
升级后重新安装并构建；现代依赖图需要一起使用。基础样式以新版依赖为准。

JSON/EDN 解析、页面错误展示、折叠/展开及原 `edn-grid` 存档格式保持。
任意 EDN 与混合状态保留真实 Dynamic 边界；Map 的异构 key 使用 Respo 的 `data-states` / `data-list->`，
原始数据 key 留在状态游标，渲染坐标由框架按完整 key 相等关系适配，支持 Bool/List 等数据 key。
框架该 API 保留已有非 nil key 要求。原值分支路径仍按既有字符串规则生成。

10 个 DOM handler 采用真实 RespoEvent；文本字段继续受检读取 String，原 Node fixture 使用实际 `event->edn`。
错误提示的缺省子节点改为 Option，原 8px 横向间距使用 `space-x`，根渲染与 SSR 回归在 managed memo frame 中执行。
启动仍先恢复存档并完成首次渲染，再注册退出保存；失败时中止启动、保留旧存档。

本轮 27 个原定义中，6 个代码体变化，其他 21 个定义及全部原 schema、附带测试不变。
同一 0.34.2 分析口径下，unresolved **18→17**、codeNil **6→5**，schemaDynamic **33**、unsafe **0** 保持。
全定义 **231/231**、完整 strict（diagnostics=[]）、原 5 项附带测试、原 9 项 Node 回归和构建通过。
实际隔离 Chrome 验证合成 JSON/EDN、错误提示及失败后旧数据保留、Bool/List Map key、List key 折叠/展开与刷新恢复，page error 为空。
不放宽门禁，不增加测试组或永久迁移/检查脚本。文件仍只使用 `calcit.cirru` 与 `deps.cirru`。

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
