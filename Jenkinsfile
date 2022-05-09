pipeline {
    agent any
    stages { 
         stage('Deployment App') {
            steps {
                sh('mvn -f ./Test-mysql-petclinic clean package')
            }
        }
        stage('Launch App') {
            steps {            
                sh('docker-compose -f Test-mysql-petclinic/docker-compose.yml up -d') 
            }
        }
    }
}
