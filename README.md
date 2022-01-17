# None CRA Minimal React Template with Webpack, TypeScript, ESlint, Prettier

A quick and dirty bash script I use to bootstrap a TypeScript React project.

The bash script `react-typescript-init.sh` creates a React app WITHOUT using create-react-app. It auto configures
both Prettier and ESlint, and also copies over the settings.json file VSCode uses to enable these on save.

For me this is the minimal amount needed to start on a project, as I am not a fan of CRA.

## Requirements

**You must use Yarn, the script does not support NPM.**

You should have the ESlint and Prettier - Code formatter plugin for VSCode.

## How to use

- Clone the repository and run in the root directory:
  `./react-typescript-init.sh "{PATH_TO_PROJECT_DIRECTORY}`
  Where {PATH_TO_PROJECT_DIRECTORY} is the full path to the directory you wish to initialize the project in, ie `/Users/me/Projects/new-typescript-project`.

- Go through the set up process and fill in the project information, the script really justs automates a lot of the dependency installation and configuration files.

- Copy over the text shown at the end of the script to `package.json`.

- Run `yarn Dev` in the root project directory. The web app should be served on port 8000.
