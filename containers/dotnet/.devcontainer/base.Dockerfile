# [Choice] .NET Core version: 5.0, 3.1, 2.1
ARG VARIANT="3.1"
FROM mcr.microsoft.com/dotnet/core/sdk:${VARIANT}-bionic

LABEL Name=nikiforovall/devcontainers/dotnet \
    org.opencontainers.image.source=https://github.com/NikiforovAll/dev-containers.git\
    org.opencontainers.image.description="Base development environment for .NET developer" \
    org.opencontainers.image.url=https://github.com/NikiforovAll/dev-containers.git \
    MAINTAINER=NikiforovAll \
    VERSION=0.6.0

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="true"

# Install needed packages and setup non-root user. Use a separate RUN statement to add your own dependencies.
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID
COPY library-scripts/common-debian.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

# CLI

# TODO: make sure that dotfiles could be installed both for root and vscode user

COPY library-scripts/common-cli.sh /tmp/library-scripts/
RUN apt-get update \
    # Use Docker script from script library to set things up
    && /bin/bash /tmp/library-scripts/common-cli.sh "${INSTALL_ZSH}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

# [Option] Enable non-root Docker access in container
ARG ENABLE_NONROOT_DOCKER="true"
ARG SOURCE_SOCKET=/var/run/docker-host.sock
ARG TARGET_SOCKET=/var/run/docker.sock

#   Install docker

COPY library-scripts/docker-debian.sh /tmp/library-scripts/
RUN apt-get update \
    # Use Docker script from script library to set things up
    && /bin/bash /tmp/library-scripts/docker-debian.sh "${ENABLE_NONROOT_DOCKER}" "${SOURCE_SOCKET}" "${TARGET_SOCKET}" "${USERNAME}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

# [Option] Install Node.js
ARG INSTALL_NODE="true"
ARG NODE_VERSION="none"
ENV NVM_DIR=/usr/local/share/nvm
ENV NVM_SYMLINK_CURRENT=true \
    PATH=${NVM_DIR}/current/bin:${PATH}
COPY library-scripts/node-debian.sh /tmp/library-scripts/
RUN RUN if [ "${INSTALL_NODE}" = "true" ]; then apt-get update && bash /tmp/library-scripts/node-debian.sh "${NVM_DIR}"; fi

# [Option] Install Azure CLI
ARG INSTALL_AZURE_CLI="false"
COPY library-scripts/azcli-debian.sh /tmp/library-scripts/
RUN if [ "$INSTALL_AZURE_CLI" = "true" ]; then bash /tmp/library-scripts/azcli-debian.sh; fi \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

