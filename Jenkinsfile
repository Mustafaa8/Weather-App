pipeline {
    agent any
    environment {
        IMAGE_NAME = 'weather-app'
        IMAGE_TAG = 'latest'
    }
    stages {
        stage('Cloning Repo') {
            steps {
                git branch: 'main' ,url: 'https://github.com/Mustafaa8/Weather-App.git' , credentialsId: 'gittoken'
            }
        }
        stage('Dockerrizing') {
            steps {
                sh '''
                docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
                '''
            }
        }
    }
}