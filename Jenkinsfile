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

                docker ps -qaf name="$CONTAINER_NAME" | grep -q .    # -f forces removal if it's running
                if [ $? -eq 0 ]; then
                    echo "the container is running or stopped, removing it! and creating another version"
                    docker rm -f "$CONTAINER_NAME"
                    docker run --name spring-app -p 80:80 -d --restart=always anas1243/spring-app
                else
                    echo "there is no spring app running on the host. creating one"
                    docker run --name spring-app -p 80:80 -d --restart=always anas1243/spring-app
                fi
                '''
            }
        }
    }
}
