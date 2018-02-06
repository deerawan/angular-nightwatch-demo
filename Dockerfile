FROM node:8

RUN useradd jenkins --shell /bin/bash --create-home
USER jenkins
