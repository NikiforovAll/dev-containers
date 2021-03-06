# [Choice] Node.js version: 14, 12, 10
ARG VARIANT=14-buster
FROM node:${VARIANT}

# [Option] Install zsh
ARG INSTALL_ZSH="true"
# [Option] Upgrade OS packages to their latest versions
ARG UPGRADE_PACKAGES="true"

LABEL Name=nikiforovall/devcontainers/angular \
    org.opencontainers.image.source=https://github.com/NikiforovAll/dev-containers.git\
    org.opencontainers.image.description="Base development environment for angular developer" \
    org.opencontainers.image.url=https://github.com/NikiforovAll/dev-containers.git \
    MAINTAINER=NikiforovAll \
    VERSION=0.8.0

# Install needed packages, yarn, nvm and setup non-root user. Use a separate RUN statement to add your own dependencies.
ARG USERNAME=node
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ENV NVM_DIR=/usr/local/share/nvm
ENV NVM_SYMLINK_CURRENT=true \ 
    PATH=${NVM_DIR}/current/bin:${PATH}
COPY library-scripts/*.sh /tmp/library-scripts/
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    # Remove imagemagick due to https://security-tracker.debian.org/tracker/CVE-2019-10131
    && apt-get purge -y imagemagick imagemagick-6-common \
    # Install common packages, non-root user, update yarn and install nvm
    && bash /tmp/library-scripts/common-debian.sh "${INSTALL_ZSH}" "${USERNAME}" "${USER_UID}" "${USER_GID}" "${UPGRADE_PACKAGES}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /root/.gnupg /tmp/library-scripts

# CLI

COPY library-scripts/common-cli.sh /tmp/library-scripts/
COPY lib/fd_8.1.1_amd64.deb /tmp/library-scripts

RUN apt-get update \
    # Use Docker script from script library to set things up
    && /bin/bash /tmp/library-scripts/common-cli.sh "${INSTALL_ZSH}" \
    # Clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts/

# Configure global npm install location
ARG NPM_GLOBAL=/usr/local/share/npm-global
ENV PATH=${NPM_GLOBAL}/bin:${PATH}
RUN mkdir -p ${NPM_GLOBAL} \
    && chown ${USERNAME}:root ${NPM_GLOBAL} \
    && npm config -g set prefix ${NPM_GLOBAL} \
    && sudo -u ${USERNAME} npm config -g set prefix ${NPM_GLOBAL} \
    && echo "if [ \"\$(stat -c '%U' ${NPM_GLOBAL})\" != \"${USERNAME}\" ]; then sudo chown -R ${USERNAME}:root ${NPM_GLOBAL} ${NVM_DIR}; fi" \
    | tee -a /etc/bash.bashrc >> /etc/zsh/zshrc

# Install eslint
# ARG USERNAME=node

RUN sudo -u ${USERNAME} npm install -g eslint typescript @angular/cli\
    && npm cache clean --force > /dev/null 2>&1

# Test Angular
RUN apt-get update && apt-get install -y xvfb chromium
ADD ./library-scripts/xvfb-chromium /usr/bin/xvfb-chromium
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/google-chrome
RUN ln -s /usr/bin/xvfb-chromium /usr/bin/chromium-browser

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# [Optional] Uncomment if you want to install an additional version of node using nvm
# ARG EXTRA_NODE_VERSION=10
# RUN su node -c "source /usr/local/share/nvm/nvm.sh && nvm install ${EXTRA_NODE_VERSION}"

# [Optional] Uncomment this line to install global node packages.
# RUN sudo -u ${USERNAME} -c "source /usr/local/share/nvm/nvm.sh && npm install <name>" 2>&1

EXPOSE 4200/tcp
