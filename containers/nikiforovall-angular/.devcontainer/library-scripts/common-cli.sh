INSTALL_ZSH=${1:-"true"}

if [ "$(id -u)" -ne 0 ]; then
    echo -e 'Script must be run as root. Use sudo, su, or add "USER root" to your Dockerfile before running this script.'
    exit 1
fi

apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    tree \
    silversearcher-ag \
    lnav \
    # procs \
    # tokei \
    # fzf \
    # fd-find \
    # bat \

apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/library-scripts

# TODO: make sure that exa is aviable to vscode user
EXA_BUILD="exa-linux-x86_64"
EXA_FILENAME="exa-linux-x86_64-0.9.0.zip"
EXA_URL="https://github.com/ogham/exa/releases/download/v0.9.0/$EXA_FILENAME"
curl -sL $EXA_URL -o /tmp/$EXA_FILENAME exa
unzip "/tmp/$EXA_FILENAME" -d /tmp &>/dev/null
mv "/tmp/$EXA_BUILD" /usr/local/bin/exa
# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1

# TODO: perform layer cleanup
