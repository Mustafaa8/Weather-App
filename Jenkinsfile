pipeline {
    agent any
    environment {
        IMAGE_NAME = 'weather-app'
        IMAGE_TAG = 'latest'
        DOCKER_REPO = 'mostafaa8/weather-app'
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
                docker build -t ${DOCKER_REPO}:${IMAGE_TAG} .
                '''
            }
        }
        stage('Pushing Iamge') {
            steps {
                withCredentials([usernamepassword(credentialsId: 'docker-cred',usernameVariable: 'DOCKER_USER',passwordVariable: 'DOCKER_PASS')])
                sh '''
                docker login -u ${DOCKER_USER} --password ${DOCKER_PASS}
                docker push ${DOCKER_REPO}:${IMAGE_TAG}
                '''
            }
        }
    }
}