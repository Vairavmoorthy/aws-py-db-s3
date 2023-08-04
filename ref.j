
pipeline {
    agent any
    stages {
        stage('Deploy to remote machine') {
            steps {
                script {
                    def remoteMachine = [
                        name: 'Docker-pc',
                        host: '13.232.22.180',
                        user: 'ubuntu',
                        credentials: 'u112'
                    ]
                }
            }
        }

        stage('Docker login') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'Dt20',
                        usernameVariable: 'DOCKER_USERNAME',
                        passwordVariable: 'DOCKER_PASSWORD'
                    )
                ]) {
                    sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                }
            }
        }

        stage('Pull Image') {
            steps {
                sh 'docker pull vairav7590/vairav'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 9090:80 vairav7590/vairav'
            }
        }
    }
}
