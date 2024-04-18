FROM lscr.io/linuxserver/openvscode-server:latest

RUN apt update -qqy && \
    apt install -qqy graphviz && \
    /app/openvscode-server/bin/openvscode-server --install-extension joaompinto.vscode-graphviz

WORKDIR /code
RUN chmod -R 777 /code
