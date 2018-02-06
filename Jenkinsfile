pipeline {
  agent { docker:'node:8' }
  stages {
    stage('build') {
      steps {
        sh 'npm --version'
        sh 'npm install'
      }
    }
  }
}
