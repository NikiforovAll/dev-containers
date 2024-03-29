# Nikiforovall: .NET

## Summary

*Develop C# and .NET Core based applications. Includes all needed SDKs, extensions, and dependencies.*

| Metadata                          | Value                                            |
| --------------------------------- | ------------------------------------------------ |
| *Contributors*                    | NikiforovAll                                     |
| *Definition type*                 | Dockerfile                                       |
| *Published images*                | ghcr.io/nikiforovall/devcontainers/dotnet:latest |
| *Available image variants*        | 2.1, 3.1, 5.0, 6.0                               |
| *Published image architecture(s)* | x86-64                                           |
| *Container host OS support*       | Linux                                            |
| *Languages, platforms*            | .NET Core, C#                                    |

Based on <https://github.com/microsoft/vscode-dev-containers/tree/master/containers/dotnetcore>

## Description

* `mcr.microsoft.com/dotnet/core/sdk`
* `common-debian.sh`
* `docker-debian.sh`
* `node-debian.sh` [optional]
* `azcli-debian.sh` [optional]
* GIT: containers automatically copy your local .gitconfig
* dotfile personalization

## Build

* `docker build --pull --rm -f "containers/dotnet/.devcontainer/base.Dockerfile" -t devcontainers/dotnet:x.y.z containers/dotnet/.devcontainer`
