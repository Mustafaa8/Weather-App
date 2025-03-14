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
        stage('Dockerizing') {
            steps {
                sh '''
                docker build -t ${DOCKER_REPO}:${IMAGE_TAG} .
                '''
            }
        }
        stage('Pushing Iamge') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-cred' , usernameVariable: 'DOCKER_USER' , passwordVariable: 'DOCKER_PASS' )]) {
                    sh '''
                    echo "${DOCKER_PASS}"| docker login -u ${DOCKER_USER} --password-stdin
                    docker push ${DOCKER_REPO}:${IMAGE_TAG}
                    '''
                }
            }
        }
        stage('Configuring Machines') {
            steps {
                sh '''
                    chmod 600 ./machines_key/m01/private_key 
                    chmod 600 ./machines_key/m02/private_key
                    export ANSIBLE_HOST_KEY_CHECKING=False
                    ansible-playbook -i ansible/inventory ansible/playbook.yml
                '''
            }
        }
    }
    post {
        always {
            slackSend (
                channel: '#building', 
                color: currentBuild.currentResult == 'SUCCESS' ? 'good' : 'danger', 
                message: "Build ${env.JOB_NAME} #${env.BUILD_NUMBER} finished with status: ${currentBuild.currentResult}. Check details: ${env.BUILD_URL}"
            )
        }
    }
}