pipeline {
  agent {
    label 'int'
  }

  stages {
    stage('Build') {
      steps {
        sh 'hostname'
        sh 'pwd'
        sh 'id -a'
        sh 'ls -l'
        sh 'docker-compose up -d'
      }
    }
    stage('Test') {
      steps {
        sh 'docker-compose run atlas npm run e2e-nightwatch'
      }
    }
  }

  post {
    always {
      sh 'docker-compose -f docker-compose.ci.yml down --remove-orphans --volumes'
      cleanWs()
    }
  }
}
