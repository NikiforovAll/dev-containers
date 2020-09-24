# Repository Development Containers ![.github/workflows/build-dev.yml](https://github.com/NikiforovAll/dev-containers/workflows/.github/workflows/build-dev.yml/badge.svg?branch=master)

🚧 WIP, source <https://github.com/NikiforovAll/vscode-dev-containers/tree/nikiforovall-dotnet/containers/nikiforovall-dotnet>

> Consider to replicate dev-container definition as soon as tooling is available and it is possible to build dev-container out of definition, for now. Let's keep dev-container definition in original repo as fork.

## .NET Core dev-container 📦

Summary: .NET Core SDK, zsh + oh-my-zsh / bash.

Please see: [dotnet/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/dotnet)

```json
    {
        "name": "NikiforovAll: .NET Core dev-container",
        "image": "ghcr.io/nikiforovall/devcontainers/angular:0.6.0",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
    }
```

## Angular dev-container 📦

Summary: Nodejs, Typescript, Angular, zsh + oh-my-zsh / bash.

Please see: [angular/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/angular)

```json
    {
        "name": "NikiforovAll: Angular dev-container",
        "image": "ghcr.io/nikiforovall/devcontainers/angular:0.3.0",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
    }
```

## Dotfiles

Containers above provide basis and dependencies for dotfiles [nikiforovall/dotfiles](https://github.com/NikiforovAll/dotfiles.git)

## License

Licensed under the MIT License. See [LICENSE](./LICENSE)
