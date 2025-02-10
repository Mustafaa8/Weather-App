pipeline {
    agent any

    stages {
        stage('Cloning Repogit') {
            git branch: 'main' ,url: 'https://github.com/Mustafaa8/Weather-App.git' , credentialsId: 'gittoken'
        }
    }
}