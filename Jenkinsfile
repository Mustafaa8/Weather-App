pipeline {
    agent any
    environment {
        IMAGE_NAME = 'weather-app'
        IMAGE_TAG = 'latest'
    }
    stages {
        stage('Cloning Repo') {
            git branch: 'main' ,url: 'https://github.com/Mustafaa8/Weather-App.git' , credentialsId: 'gittoken'
        }
        stage('Dockerrizing') {
            sh '''
            docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
            '''
        }
    }
}