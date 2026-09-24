 pipeline {
      agent any
      stages {
          stage('Checkout') {
              steps {
                  checkout scm
              }
          }
          stage('Build') {
              steps {
                  sh 'docker build -t hellodevops:jenkins .'
              }
          }
          stage('Deploy') {
              steps {
                  sh 'docker rm -f hellodevops-jenkins || true'
                  sh 'docker run -d --name hellodevops-jenkins -v /home/sai/ci-cd/data:/app/data hellodevops:jenkins'
              }
          }
      }
  }
