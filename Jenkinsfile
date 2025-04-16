pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -f spring-Dockerfile -t anas1243/spring-app .'
            }
        }
        stage('Deploy'){
            steps{
                sh '[[ -n "$(docker ps -qf name=spring-app)" ]] && docker stop spring-app && docker rm spring-app'
                sh 'docker run --name spring-app -p 80:80 -d anas1243/spring-app'
            }
        }
    }
}
