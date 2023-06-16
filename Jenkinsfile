pipeline {
  agent any

  stages {
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t hw04:devOps .'
      }
    }

    stage('Push Docker Image to Registry') {
      steps {
        sh 'docker push hw04:devOps'
      }
    }

    stage('Deploy to Kubernetes') {
      steps {
        sh 'kubectl apply -f kubernetes/deployment.yaml'
      }
    }
  }
}
