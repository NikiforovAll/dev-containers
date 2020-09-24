# Node.js & JavaScript

## Summary

*Develop Node.js based applications. Includes Node.js, eslint, nvm, and yarn.*

| Metadata                          | Value                                             |
| --------------------------------- | ------------------------------------------------- |
| *Contributors*                    | NikiforovAll                                      |
| *Definition type*                 | Dockerfile                                        |
| *Published image*                 | ghcr.io/nikiforovall/devcontainers/angular:latest |
| *Available image variants*        | 10, 12, 14                                        |
| *Published image architecture(s)* | x86-64                                            |
| *Works in Codespaces*             | Yes                                               |
| *Container host OS support*       | Linux, macOS, Windows                             |
| *Languages, platforms*            | Node.js, JavaScript                               |

## Description

* node:${VARIANT}
* `common-debian.sh`
* GIT: containers automatically copy your local .gitconfig
* dotfile personalization

## Build

* `docker build --pull --rm -f "containers/angular/.devcontainer/base.Dockerfile" -t devcontainers/angular:x.y.z containers/angular/.devcontainer`

TODO: add support for Karma <https://hub.docker.com/r/markadams/chromium-xvfb>
TODO: investigate why performance for wsl2 is so slow and try if it will not occur on other setup
