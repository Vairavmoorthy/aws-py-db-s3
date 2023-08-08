pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    def branchName = 'slave'
                    checkout([$class: 'GitSCM', branches: [[name: branchName]], userRemoteConfigs: [[url: 'https://github.com/Vairavmoorthy/aws-py-db-s3.git']]])
                }
            }
        }

        stage('Build Infrastructure') {
            steps {
                script {
                    withAWS(credentials: '112') {
                        //sh 'terraform init'
                        // sh 'terraform plan -out=tfplan'
                        sh 'terraform destroy -parallelism=6 -auto-approve'
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
