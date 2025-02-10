pipeline {
    agent any
    stages {
        stage('Cloning Repo') {
            git branch: 'main' ,url: 'https://github.com/Mustafaa8/Weather-App.git' , credentialsId: 'gittoken'
        }
    }
}