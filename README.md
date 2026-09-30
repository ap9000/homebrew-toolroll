# Homebrew tap for Toolroll

[Toolroll](https://github.com/ap9000/toolroll) is a control plane for unattended coding agents: queue tasks, walk away, come back to pull requests.

```sh
brew install ap9000/toolroll/toolroll
toolroll up
```

That installs the `toolroll` command (and `standing-orders`, its older name) with Homebrew's Node.js. Update with `brew upgrade toolroll`.

The formula follows the [`toolroll` npm package](https://www.npmjs.com/package/toolroll); a daily workflow opens the new version here after each npm release.

Toolroll also installs with any Node.js package manager (Node.js 22.13 or newer):

```sh
npm i -g toolroll      # or: npx toolroll up
bun add -g toolroll    # or: bunx toolroll up
pnpm add -g toolroll   # or: pnpm dlx toolroll up
```
