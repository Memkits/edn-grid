
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### Development

使用已发布的配对 Calcit/procs **0.30.1-alpha.4**（预发布，不是正式 0.30.1）、
Caps 0.1.1、Node.js 24 和 Yarn 4.18.0。依赖使用正式 Reel 0.6.39、
Respo 0.16.122、UI 0.7.41、Feather 0.4.29 和 js-ffi 0.2.3。

JSON/EDN 解析、错误展示、折叠/展开，以及原 `edn-grid` 存档格式和恢复行为保持不变。
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

保留原有 8 项 Node 回归和 5 项附带测试，测试中的旧缺失值读取同步迁移，预期值不变。
同一 Node 文件补一项混合 key 状态渲染回归，并适配 Respo 的 ChildPair/RenderNode 结构；
不增加检查脚本、进程管理器或额外 COS 校验。

Only `calcit.cirru` and `deps.cirru` are canonical; do not restore the retired
`compact.cirru` and `package.cirru` files. Browser helpers use the same js-ffi
version as Respo/UI/Feather, with the required storage, DOM and event APIs.

### Deployment

The workflow builds frontend assets with the `https://cos-sh.tiye.me/Memkits/edn-grid/` base URL and uploads `dist/` to COS using the released v1.2.0 action’s built-in HTML reference and public verification. No separate CDN verification script is needed. Pull requests use an isolated `pr/<number>/<run-id>/<attempt>/` prefix. The original `dist/*` rsync deployment to `rsync-user@tiye.me:/web-assets/repo/Memkits/edn-grid` remains unchanged on `main` pushes; COS does not include server code.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
