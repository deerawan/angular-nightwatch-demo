pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "branch: ${env.BRANCH_NAME}"
                sh '''
                  figlet building...
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
