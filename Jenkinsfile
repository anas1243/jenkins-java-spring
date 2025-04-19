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
                sh '''
                CONTAINER_NAME=spring-app
                docker rm -f "$CONTAINER_NAME" || true
                docker run --name spring-app -p 80:80 -d --restart=always anas1243/spring-app
                '''
            }
        }
        stage('test'){
            when {
                expression { "${params.RUN_TESTS}" == 'true' }
            }
            steps{
                sh 'echo "Running some tests ... "'
            }
            
        }
    }
}
