pipeline {
    agent any
    tools {
            maven 'M398'
        }
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/anas1243/jenkins-java-spring.git'
                sh 'mvn clean package -DskipTests=true'
            }
        }
        stage('Test'){
            steps{
                sh 'mvn test'
            }
        }
        stage('Deploy'){
            steps{
                sh 'java -jar target/hello-demo-*.jar'
            }
        }
    }
}
