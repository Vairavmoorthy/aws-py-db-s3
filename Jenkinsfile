pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    def branchName = 'infra' // Replace with the name of the branch you want to download
                    checkout([$class: 'GitSCM', branches: [[name: infra]], userRemoteConfigs: [[url: 'https://github.com/Vairavmoorthy/aws-py-db-s3.git']]])

        stage('Build Infrastructure') {
            steps {
                withAWS(credentials: '112') {
                    //sh 'terraform init'
                   // sh 'terraform plan -out=tfplan'
                    sh 'terraform apply -parallelism=6 -auto-approve'
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
