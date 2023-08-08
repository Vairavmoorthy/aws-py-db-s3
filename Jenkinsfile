pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
<<<<<<< HEAD
                    def branchName = 'infra' // Replace with the name of the branch you want to download
                    checkout([$class: 'GitSCM', branches: [[name: infra]], userRemoteConfigs: [[url: 'https://github.com/Vairavmoorthy/aws-py-db-s3.git']]])
=======
                    def branchName = 'infra'
                    checkout([$class: 'GitSCM', branches: [[name: branchName]], userRemoteConfigs: [[url: 'https://github.com/Vairavmoorthy/aws-py-db-s3.git']]])
                }
            }
        }
>>>>>>> 69cf8238b582733bc9411632e36211dc7398d1e3

        stage('Build Infrastructure') {
            steps {
                script {
                    withAWS(credentials: '112') {
                        //sh 'terraform init'
                        // sh 'terraform plan -out=tfplan'
                        sh 'terraform apply -parallelism=6 -auto-approve'
                    }
                }
            }
        }

        stage('Create Infrastructure') {
            steps {
                sh 'echo "Creating pypro Instance"'
            }
        }
    }
}
