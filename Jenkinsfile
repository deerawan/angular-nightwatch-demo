pipeline {
    agent any

    tools {
      nodejs '7.6.0'
    }

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
                  npm list
                '''
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
