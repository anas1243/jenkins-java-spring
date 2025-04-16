pipeline {
    agent any
    tools {
            maven 'M398'
        }
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/anas1243/jenkins-java-spring.git'
                sh 'docker build -f spring-Dockerfile -t anas1243/spring-app .'
            }
        }
        stage('Deploy'){
            steps{
                sh 'docker run --name spring-app -p 80:80 -d anas1243/spring-app'
            }
        }
    }
}
