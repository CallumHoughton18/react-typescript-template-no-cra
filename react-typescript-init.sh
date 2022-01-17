#!/bin/bash

if [[ $1 == "" ]] ; then
    echo 'You must provide a path for the project'
    exit 0
fi

TEMPLATEDIR=$(pwd)
PROJECTPATH=$1


mkdir -p $PROJECTPATH
cd $PROJECTPATH

yarn init
yarn add -D typescript
yarn add -D webpack webpack-cli webpack-dev-server css-loader html-webpack-plugin mini-css-extract-plugin ts-loader
yarn add react react-dom react-router-dom
yarn add -D @types/react-router-dom @types/react-dom

cp "$TEMPLATEDIR/.npmrc" "./.npmrc"
cp "$TEMPLATEDIR/.gitignore" "./.gitignore"

cp "$TEMPLATEDIR/index.html" "./index.html"
cp -R "$TEMPLATEDIR/src" "./src"
cp -R "$TEMPLATEDIR/.vscode" "./.vscode"
cp "$TEMPLATEDIR/tsconfig.json" "./tsconfig.json"
cp "$TEMPLATEDIR/webpack.config.js" "./webpack.config.js"

yarn add -D eslint
yarn add -D eslint-plugin-react@latest @typescript-eslint/eslint-plugin@latest @typescript-eslint/parser@latest
yarn add -D eslint-config-prettier eslint-plugin-prettier prettier

cp "$TEMPLATEDIR/.eslintrc.json" "./.eslintrc.json"
cp "$TEMPLATEDIR/.prettierrc.json" "./.prettierrc.json"
cp "$TEMPLATEDIR/.eslintignore" "./.eslintignore"

echo "Completed, paste the following json to your package.json file:

  \"scripts\": {
    \"dev\": \"webpack serve --port 8000\",
    \"build\": \"NODE_ENV=production webpack\",
    \"lint\": \"eslint --ignore-path .eslintignore './src/**/*.{ts,tsx}'\"
},"