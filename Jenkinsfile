pipeline {
    agent any
    stages { 
         stage('Deployment App') {
            steps {
                sh('mvn clean package')
            }
        }
        stage('Launch App') {
            steps {            
                sh('docker-compose up -d') 
            }
        }
    }
}
