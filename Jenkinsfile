pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
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

