# Dockerizing Angular 2 Client App
# @link: https://scotch.io/tutorials/create-a-mean-app-with-angular-2-and-docker-compose

# Create image based on the official Node 7 image from dockerhub
FROM node:7

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json /usr/src/app

# Install dependecies
RUN npm install

# Get all the code needed to run the app
# **EDIT**: comment out this, so I can set-up a volume
COPY . /usr/src/app

# Expose the port the app runs in
EXPOSE 4200

# Serve the app
CMD ["npm", "start"]
