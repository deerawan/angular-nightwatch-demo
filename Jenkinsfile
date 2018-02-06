pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
              sh 'node --version'
              sh 'npm install'
              sh 'node --max_old_space_size=8192 node_modules/.bin/ng build --no-progress --aot=true --target=production'
              sh 'npm install http-server'
              sh 'ls'
              sh 'cd dist && node_modules/.bin/http-server -p 4200 -a localhost . > http.log 2>&1 &'
              sh 'npm install nightwatch@0.9.19'
            }
        }
        stage('Test') {
          steps {
            sh 'npm run e2e-setup'
            sh 'npm run e2e-nightwatch'
          }
        }
    }
}
