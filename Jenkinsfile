pipeline {
    agent any
    tools {
        nodejs 'node:16'
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
                        sh "docker build -t node:v1 ."
                        sh "docker tag node:v1 sasikanth777/nodejs:latest"
                        sh "docker push sasikanth777/nodejs:latest"
                    }
                }
            }
        } 
    }
}
