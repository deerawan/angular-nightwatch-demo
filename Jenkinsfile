pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'node --version'
                sh 'npm install'
                sh 'node --max_old_space_size=8192 node_modules/.bin/ng build --no-progress --aot=true --target=production'
            }
        }
    }
}
