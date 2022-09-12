# cra-template-arishi-typescript
<div align="center"><strong><em>
A fork of CRA's Typescript template with helpful tools for the professional developer
</em></strong></div>


This project is based off the official TypeScript template for [Create React App](https://github.com/facebook/create-react-app).

To use this template, add `--template arishi-typescript` when creating a new app.

For example:

```sh
npx create-react-app my-app --template arishi-typescript

# or

yarn create react-app my-app --template arishi-typescript
```

For more information, please refer to:

- [Getting Started](https://create-react-app.dev/docs/getting-started) – How to create a new app.
- [User Guide](https://create-react-app.dev) – How to develop apps bootstrapped with Create React App.

## Custom additions to the CRA Typescript template

1. Specify package manager as [Yarn v3](https://yarnpkg.com/getting-started/usage)

You will find that the package manager is pinned to Yarn v3. It is installed in a backwords-compatible mode and will create a node_modules folder as with yarn v1 and npm

2. [Husky : Git Hooks](https://typicode.github.io/husky)

Husky will run the `yarn lint` and `yarn test` commands as a [pre-commit](template/.husky/pre-commit) hook.

3. [Prettier](https://prettier.io/)

Eslint has been augmented with prettier for code formatting.
You will find the relevant prettier config in [.prettierrc.json](template/.prettierrc.json)
