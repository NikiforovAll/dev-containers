# C# (.NET Core)

## Summary

*Develop C# and .NET Core based applications. Includes all needed SDKs, extensions, and dependencies.*

| Metadata                          | Value                                             |
| --------------------------------- | ------------------------------------------------- |
| *Contributors*                    | The VS Code Team                                  |
| *Definition type*                 | Dockerfile                                        |
| *Published images*                | mcr.microsoft.com/vscode/devcontainers/dotnetcore |
| *Available image variants*        | 2.1, 3.1                                          |
| *Published image architecture(s)* | x86-64                                            |
| *Works in Codespaces*             | Yes                                               |
| *Container host OS support*       | Linux, macOS, Windows                             |
| *Languages, platforms*            | .NET Core, C#                                     |

## Using this definition with an existing folder

While this definition should work unmodified, you can select the version of .NET Core the container uses by updating the `VARIANT` arg in the included `devcontainer.json` (and rebuilding if you've already created the container).

```json
"args": { "VARIANT": "3.1" }
```

You can also directly reference pre-built versions of `.devcontainer/base.Dockerfile` by using the `image` property in `.devcontainer/devcontainer.json` or updating the `FROM` statement in your own  `Dockerfile` to one of the following. An example `Dockerfile` is included in this repository.

- `mcr.microsoft.com/vscode/devcontainers/dotnetcore` (latest)
- `mcr.microsoft.com/vscode/devcontainers/dotnetcore:2.1`
- `mcr.microsoft.com/vscode/devcontainers/dotnetcore:3.1`

Version specific tags tied to [releases in this repository](https://github.com/microsoft/vscode-dev-containers/releases) are also available.

- `mcr.microsoft.com/vscode/devcontainers/dotnetcore:0-3.1`
- `mcr.microsoft.com/vscode/devcontainers/dotnetcore:0.135-3.1`
- `mcr.microsoft.com/vscode/devcontainers/dotnetcore:0.135.0-3.1`

Alternatively, you can use the contents of `base.Dockerfile` to fully customize your container's contents or to build it for a container host architecture not supported by the image.
