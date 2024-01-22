# About the `devops-python-ci-action` repository
This repository contains composite action for Python continuous integration (CI) operations.

[![main](https://github.com/ardian-france/devops-python-ci-action/actions/workflows/main.yml/badge.svg?event=pull_request)](https://github.com/ardian-france/devops-python-ci-action/actions/workflows/main.yml)

## Prerequisites
Make sure that `git` is installed and correctly configured on your computer.
On Windows, you can install it from [Git for Windows](https://gitforwindows.org/).

To get tools on your computer, please ask it to [PAR IT Support](mailto:paritsupport@ardian.com).

To get more information about Git installation for Windows, please access to this [documentation](https://dev.azure.com/ardianfrance/Common/_wiki/wikis/Dev.Wiki/3110/Install-Git-Bash-console?anchor=git-bash-installation).

To install the tools:
- First, you need to install a recent version of Node.js (you can get it from [here](https://nodejs.org/en))
- Second, you need to install globally `yarn`, a powerfull package manager using the following command: `npm install --global yarn`

You can check the installation of `yarn` using this command: `yarn --version`.

## Install the tools
Before you start using this code repository, install the necessary tools by running the following command:

```bash
yarn install
```

The installed tools will allow:
- To assist you in the construction of commit messages with [commitizen](https://github.com/commitizen/cz-cli)
- To guarantee the respect of the Git workflow with [husky](https://github.com/typicode/husky) and [validate-branch-name](https://github.com/JsonMa/validate-branch-name)

## Read the documentation
Some rules must be respected.

Before you start adding code to your repository, you should read [this documentation](https://dev.azure.com/ardianfrance/Common/_wiki/wikis/DevOps.Wiki/3116/Git-workflow).