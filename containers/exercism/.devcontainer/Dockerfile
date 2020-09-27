# [Choice] .NET Core version: 5.0, 3.1, 2.1
ARG VARIANT="3.1"
FROM ghcr.io/nikiforovall/devcontainers/dotnet:1.1.0

LABEL Name=nikiforovall/devcontainers/exercism \
    org.opencontainers.image.source=https://github.com/NikiforovAll/dev-containers.git\
    org.opencontainers.image.description="Base development environment for exercism.io/ Platform" \
    org.opencontainers.image.url=https://github.com/NikiforovAll/dev-containers.git \
    MAINTAINER=NikiforovAll \
    VERSION=0.2.0

# Install exercism CLI
RUN wget https://github.com/exercism/cli/releases/download/v3.0.5/exercism-linux-64bit.tgz && \
    tar xzf exercism-linux-64bit.tgz && \
    mv exercism /usr/local/bin/

RUN mkdir -p /home/${USERNAME}/exercism

# Install prolog
# COPY library-scripts/prolog.sh /tmp/library-scripts/

# RUN /bin/bash /tmp/library-scripts/prolog.sh "stub" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
#     && apt-get clean -y && rm -rf /var/lib/apt/lists/* &&  rm -rf /tmp/library-scripts

