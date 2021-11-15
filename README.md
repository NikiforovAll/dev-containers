# Repository Development Containers ![.github/workflows/build-dev.yml](https://github.com/NikiforovAll/dev-containers/workflows/.github/workflows/build-dev.yml/badge.svg?branch=master)

## 🐋 [nikiforovall/devcontainers/dotnet](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fdotnet)

Summary: .NET Core SDK, zsh + oh-my-zsh / bash.

For source code, please see: [dotnet/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/dotnet)

```json
    {
        "name": "NikiforovAll: .NET Core dev-container",
        "image": "ghcr.io/nikiforovall/devcontainers/dotnet:latest",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
        "extensions": [/*<extensionList>*/],
    }
```

## 🐋 [nikiforovall/devcontainers/go](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fgo)

Summary: .NET Core SDK, zsh + oh-my-zsh / bash.

For source code, please see: [go/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/go)

```json
    {
        "name": "NikiforovAll: Go dev-container",
        "image": "nikiforovall/devcontainers-go",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
        "extensions": [/*<extensionList>*/],
    }
```

## 🐋 [nikiforovall/devcontainers/angular](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fangular)

Summary: Nodejs, Typescript, Angular, zsh + oh-my-zsh / bash.

For source code, please see: [angular/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/angular)

```json
    {
        "name": "NikiforovAll: Angular dev-container",
        "image": "ghcr.io/nikiforovall/devcontainers/angular:latest",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
        "extensions": [/*<extensionList>*/],
    }
```

## 🐋 [nikiforovall/devcontainers/exercism](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fexercism)

Summary: This is a dev environment with exercism preinstalled.

For source code, please see: [exercism/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/exercism)

```json
    {
        "name": "NikiforovAll: Exercism",
        "image": "ghcr.io/nikiforovall/devcontainers/exercism:latest",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/bash"
        },
        "extensions": [/*<extensionList>*/],
        "postCreateCommand": "dotnet restore",
        "workspaceFolder": "/root/exercism",
        "workspaceMount": "source=${localWorkspaceFolder}/,target=/root/exercism,type=bind,consistency=cached",
        "remoteUser": "root"
    }
```

## 🐋 [nikiforovall/devcontainers/antlr](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fantlr)

ANTLR developer environment.

For source code, please see: [antlr/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/antlr)

```json
    {
        "name": "NikiforovAll: ANLTR",
        "image": "ghcr.io/nikiforovall/devcontainers/antlr:latest",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/bash"
        },
        "extensions": [/*<extensionList>*/],
    }
```

## Dotfiles

Containers above provide basis and dependencies for dotfiles [https://github.com/NikiforovAll/dotfiles/tree/master/src/dev-container](https://github.com/NikiforovAll/dotfiles/tree/master/src/dev-container)

Configure it like this:

```text
~/dotfiles/src/dev-container/boot/install.sh
https://github.com/NikiforovAll/dotfiles.git
~/dotfiles
```

![alt](https://raw.githubusercontent.com/NikiforovAll/dev-containers/master/assets/cnf_dotfiles.png)

## Highlights

* Every container is based on common setup that includes:
  * themed bash, zsh. This depends on dotfiles.
  * fzf ⭐
    * CTRL-T, CTRL-R, ALT-C
    * fzf-extras
  * fd
  * silversearcher-ag, could be invoked as ag.
  * lnav
  * exa, aliased as ll.
  * autosuggestions: fzf-tab | zsh-autosuggestions

If you use my dotfiles, please see <https://github.com/NikiforovAll/dotfiles/tree/master/src/dev-container/shell> for more details.

## Known issues

* exa requires locale, but dev container doesn't have it. "Unable to determine time zone: No such file or directory (os error 2)"
* [MAJOR] non-root user scenario is not tested
* exercism image builds with some errors

🚧 WIP, Tool chain could be improved based on official impl <https://github.com/NikiforovAll/vscode-dev-containers/tree/nikiforovall-dotnet/containers/nikiforovall-dotnet>

> Consider to replicate dev-container definition as soon as tooling is available and it is possible to build dev-container out of definition, for now. Let's keep dev-container definition in original repo as fork.

### TODO:

* consider to add fasd and fzf-tab to other dev-containers. Right now, it could be found only in dotnet.

## License

Licensed under the MIT License. See [LICENSE](./LICENSE)
