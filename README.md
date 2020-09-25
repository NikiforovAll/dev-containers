# Repository Development Containers ![.github/workflows/build-dev.yml](https://github.com/NikiforovAll/dev-containers/workflows/.github/workflows/build-dev.yml/badge.svg?branch=master)

## <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 28 28" fill="none" data-package-type="Docker" class="mr-2 mt-2 text-gray-light"><path d="M27.724 11.585c-.076-.06-.785-.596-2.28-.596a7.266 7.266 0 00-1.178.101c-.29-1.983-1.929-2.95-2.003-2.993l-.401-.232-.264.381a5.382 5.382 0 00-.714 1.669c-.268 1.132-.105 2.195.47 3.104-.694.387-1.808.483-2.034.491H.877a.877.877 0 00-.875.872 13.272 13.272 0 00.808 4.74c.635 1.665 1.58 2.893 2.81 3.644 1.378.844 3.617 1.326 6.155 1.326 1.147.004 2.291-.1 3.418-.31a14.287 14.287 0 004.461-1.62 12.263 12.263 0 003.044-2.492c1.462-1.654 2.332-3.497 2.98-5.134h.258c1.6 0 2.583-.64 3.126-1.177.36-.342.642-.759.825-1.22l.114-.336-.276-.218z" fill="#2496ED"></path><path d="M2.586 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H2.586a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H5.992a.217.217 0 00-.217.217v2.201c0 .12.098.216.217.216zM9.45 12.97h2.471c.12 0 .216-.096.216-.216v-2.201a.216.216 0 00-.214-.217H9.45a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM12.867 12.97h2.471c.12 0 .217-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 9.803h2.472c.119 0 .215-.097.215-.217V7.385a.216.216 0 00-.215-.216H5.992a.217.217 0 00-.217.216v2.201c0 .12.097.217.217.217zM9.45 9.803h2.471c.12 0 .216-.097.216-.217V7.385a.216.216 0 00-.216-.216H9.45a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 9.803h2.471c.12 0 .217-.097.217-.217V7.385a.217.217 0 00-.217-.216h-2.471a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 6.634h2.471c.12 0 .217-.096.217-.215V4.216A.217.217 0 0015.338 4h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM16.314 12.97h2.471c.12 0 .216-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.096.215.216.215z" fill="#2496ED"></path></svg> [nikiforovall/devcontainers/dotnet](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fdotnet)

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

## <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 28 28" fill="none" data-package-type="Docker" class="mr-2 mt-2 text-gray-light"><path d="M27.724 11.585c-.076-.06-.785-.596-2.28-.596a7.266 7.266 0 00-1.178.101c-.29-1.983-1.929-2.95-2.003-2.993l-.401-.232-.264.381a5.382 5.382 0 00-.714 1.669c-.268 1.132-.105 2.195.47 3.104-.694.387-1.808.483-2.034.491H.877a.877.877 0 00-.875.872 13.272 13.272 0 00.808 4.74c.635 1.665 1.58 2.893 2.81 3.644 1.378.844 3.617 1.326 6.155 1.326 1.147.004 2.291-.1 3.418-.31a14.287 14.287 0 004.461-1.62 12.263 12.263 0 003.044-2.492c1.462-1.654 2.332-3.497 2.98-5.134h.258c1.6 0 2.583-.64 3.126-1.177.36-.342.642-.759.825-1.22l.114-.336-.276-.218z" fill="#2496ED"></path><path d="M2.586 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H2.586a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H5.992a.217.217 0 00-.217.217v2.201c0 .12.098.216.217.216zM9.45 12.97h2.471c.12 0 .216-.096.216-.216v-2.201a.216.216 0 00-.214-.217H9.45a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM12.867 12.97h2.471c.12 0 .217-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 9.803h2.472c.119 0 .215-.097.215-.217V7.385a.216.216 0 00-.215-.216H5.992a.217.217 0 00-.217.216v2.201c0 .12.097.217.217.217zM9.45 9.803h2.471c.12 0 .216-.097.216-.217V7.385a.216.216 0 00-.216-.216H9.45a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 9.803h2.471c.12 0 .217-.097.217-.217V7.385a.217.217 0 00-.217-.216h-2.471a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 6.634h2.471c.12 0 .217-.096.217-.215V4.216A.217.217 0 0015.338 4h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM16.314 12.97h2.471c.12 0 .216-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.096.215.216.215z" fill="#2496ED"></path></svg> [nikiforovall/devcontainers/angular](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fangular)

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

## <svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" viewBox="0 0 28 28" fill="none" data-package-type="Docker" class="mr-2 mt-2 text-gray-light"><path d="M27.724 11.585c-.076-.06-.785-.596-2.28-.596a7.266 7.266 0 00-1.178.101c-.29-1.983-1.929-2.95-2.003-2.993l-.401-.232-.264.381a5.382 5.382 0 00-.714 1.669c-.268 1.132-.105 2.195.47 3.104-.694.387-1.808.483-2.034.491H.877a.877.877 0 00-.875.872 13.272 13.272 0 00.808 4.74c.635 1.665 1.58 2.893 2.81 3.644 1.378.844 3.617 1.326 6.155 1.326 1.147.004 2.291-.1 3.418-.31a14.287 14.287 0 004.461-1.62 12.263 12.263 0 003.044-2.492c1.462-1.654 2.332-3.497 2.98-5.134h.258c1.6 0 2.583-.64 3.126-1.177.36-.342.642-.759.825-1.22l.114-.336-.276-.218z" fill="#2496ED"></path><path d="M2.586 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H2.586a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 12.97h2.472c.119 0 .215-.096.215-.216v-2.201a.216.216 0 00-.214-.217H5.992a.217.217 0 00-.217.217v2.201c0 .12.098.216.217.216zM9.45 12.97h2.471c.12 0 .216-.096.216-.216v-2.201a.216.216 0 00-.214-.217H9.45a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM12.867 12.97h2.471c.12 0 .217-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM5.992 9.803h2.472c.119 0 .215-.097.215-.217V7.385a.216.216 0 00-.215-.216H5.992a.217.217 0 00-.217.216v2.201c0 .12.097.217.217.217zM9.45 9.803h2.471c.12 0 .216-.097.216-.217V7.385a.216.216 0 00-.216-.216H9.45a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 9.803h2.471c.12 0 .217-.097.217-.217V7.385a.217.217 0 00-.217-.216h-2.471a.216.216 0 00-.216.216v2.201c0 .12.096.217.216.217zM12.867 6.634h2.471c.12 0 .217-.096.217-.215V4.216A.217.217 0 0015.338 4h-2.471a.216.216 0 00-.216.216v2.203c0 .119.097.215.216.215zM16.314 12.97h2.471c.12 0 .216-.096.217-.216v-2.201a.217.217 0 00-.217-.217h-2.471a.216.216 0 00-.216.216v2.203c0 .119.096.215.216.215z" fill="#2496ED"></path></svg> [nikiforovall/devcontainers/exercism](https://github.com/users/NikiforovAll/packages/container/package/devcontainers%2Fexercism)

Summary: This is a dev environment with exercism preinstalled.

For source code, please see: [angular/README.md](https://github.com/NikiforovAll/dev-containers/tree/master/containers/exercism)

```json
    {
        "name": "NikiforovAll: Exercism",
        "image": "ghcr.io/nikiforovall/devcontainers/exercism:latest",
        "settings": {
            "terminal.integrated.shell.linux": "/bin/zsh"
        },
        "extensions": [/*<extensionList>*/],
        "postCreateCommand": "dotnet restore",
        "workspaceFolder": "/root/home/exercism",
        "workspaceMount": "source=${localWorkspaceFolder}/,target=/root/home/exercism,type=bind,consistency=cached",
        "remoteUser": "root"
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
  * fd
  * silversearcher-ag, could be invoked as ag.
  * lnav
  * exa, aliased as ll.

If you use my dotfiles, please see <https://github.com/NikiforovAll/dotfiles/tree/master/src/dev-container/shell> for more details.

## Known issues

* exa requires locale, but dev container doesn't have it. "Unable to determine time zone: No such file or directory (os error 2)"
* [MAJOR] non-root user scenario is not tested
* exercism image builds with some errors

🚧 WIP, Tool chain could be improved based on official impl <https://github.com/NikiforovAll/vscode-dev-containers/tree/nikiforovall-dotnet/containers/nikiforovall-dotnet>

> Consider to replicate dev-container definition as soon as tooling is available and it is possible to build dev-container out of definition, for now. Let's keep dev-container definition in original repo as fork.

## License

Licensed under the MIT License. See [LICENSE](./LICENSE)
