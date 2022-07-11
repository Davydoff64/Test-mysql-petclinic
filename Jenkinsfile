pipeline {
  agent none
  stages {
    stage ('Clean Package') {
      agent {
        docker { image 'maven:3.8.1-adoptopenjdk-11' }
      }
      steps {
       sh 'mvn clean package'
      }
    }
  } 
    stage ('Docker Compose') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  } 
} 
