
EDN Grid(Under development)
----

> Large piece of data in EDN could be hard to read. Trying CSS Grids for that.

Demo http://repo.memkits.org/edn-grid/

### Development

Requires Calcit 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0.

```bash
caps --strict --ci
yarn install --immutable
calcit calcit.cirru --check-only
yarn build
node --test scripts/grid-regression.test.mjs
yarn dev
```

Build and dev compile Calcit once before starting Vite. To keep generated JS
updated while editing Calcit, run `calcit calcit.cirru js -w` in another terminal.
`VITE_BASE_URL` selects the build's asset base, defaulting to `./` locally.

Only `calcit.cirru` and `deps.cirru` are canonical; do not restore the retired
`compact.cirru` and `package.cirru` files. Browser helpers use the same js-ffi
version as Respo/UI/Feather, with the required storage, DOM and event APIs.

### Deployment

The workflow builds frontend assets with the `https://cos-sh.tiye.me/Memkits/edn-grid/` base URL and uploads `dist/` to COS using the action's built-in verification. Pull requests use an isolated `pr/<number>/<run-id>/<attempt>/` prefix. The original `dist/*` rsync deployment to `rsync-user@tiye.me:/web-assets/repo/Memkits/edn-grid` remains unchanged on `main` pushes; COS does not include server code.

### Workflow

Workflow https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
