# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.140.1/containers/java/.devcontainer/base.Dockerfile

# [Choice] Java version: 11, 14
ARG VARIANT="14"
FROM mcr.microsoft.com/vscode/devcontainers/java:0-${VARIANT}

ENV ANTLR_VERSION="4.6"
ENV CLASSPATH .:/antlr-${ANTLR_VERSION}-complete.jar:$CLASSPATH

ADD http://www.antlr.org/download/antlr-${ANTLR_VERSION}-complete.jar /
RUN chmod +r /antlr-${ANTLR_VERSION}-complete.jar

COPY library-scripts/antlr4  /usr/local/bin

RUN if [ "${ANTLR_TARGET}" = "csharp" ]; then echo "csharp runtime could be added to project like this: Install-Package Antlr4.Runtime.Standard"; fi
