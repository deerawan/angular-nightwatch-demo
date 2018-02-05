pipeline {
    agent { dockerfile true }

    stages {
        stage('Build') {
            steps {
                echo "branch: ${env.BRANCH_NAME}"
                sh '''
                  pwd
                  ls -l
                  which node
                  which npm
                  node --version
                  npm --version
                  npm install
                  npm install -g @angular/cli
                  npm list
                '''
            }
        }
        stage('Test') {
            steps {
                sh 'ng test --single-run true'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }

    post {
      always {
        sh 'docker-compose down --remove-orphans --volumes'
        cleanWs()
      }
    }
}
