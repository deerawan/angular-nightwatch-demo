 FROM rastasheep/alpine-node-chromium:7-alpine

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins
