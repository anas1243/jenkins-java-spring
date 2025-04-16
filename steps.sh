# in the Host running on AWS
sudo chmod o+rw /var/run/docker.sock
docker build -f dockerFiles/Jenkins-Dockerfile -t anas1243/jenkins_master_basic
docker run --name jenkins-master -p 8080:8080 -v /home/ubuntu/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -d --restart=always -d anas1243/jenkins_master_basic:latest

# then access the jenkins container from the public url of the host

# use the mvn tool from "manage jenkins" to run the java spring app
