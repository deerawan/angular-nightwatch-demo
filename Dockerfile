FROM docker.invoice2go.io/itg-node:8.9.0

COPY --chown=node:node package.json package-lock.json ./
RUN gosu node:node npm install --ignore-scripts
COPY --chown=node:node . .
RUN gosu node:node npm install

EXPOSE 4200
