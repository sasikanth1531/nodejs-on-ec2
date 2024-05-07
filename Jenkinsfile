pipeline {
    agent any
    tools {
        nodejs 'node16'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/sasikanth1531/nodejs-on-ec2.git/'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage("Docker Build Push") {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {   
                        sh "docker build -t nodejs:latest ."
                        sh "docker tag node:v1 sasikanth777/jenkins:latest"
                        sh "docker push sasikanth777/jenkins:latest"
                    }
                }
            }
        } 
    }
}
