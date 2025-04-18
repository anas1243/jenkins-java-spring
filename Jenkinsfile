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
                # Check if a container with the same name exists (running or exited)
                if docker ps -aqf name="$container_name"; then
                echo "Removing existing container: $container_name"
                docker rm -f "$container_name"  # -f forces removal if it's running
                fi

                # Run the new container
                docker run --name spring-app -p 80:80 -d --restart=always anas1243/spring-app" 
                echo "New container '$container_name' is running."
                '''
            }
        }
    }
}
