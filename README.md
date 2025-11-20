# pratice
This is a web application, after creating conatainer you can see the app tage is "pratice".
this pipeline add al things any thing you want just remove the slace it well be activated. 
18/11/25 i create this as a weab application .

# 20/11/25 --task --Set up a complete CI/CD pipeline using Jenkins, Maven, Docker, and EC2 to automatically build and deploy a Java application.
What i Did (Short & Clear)
1. Code Setup
Created a simple Java application with a proper pom.xml.
Pushed the project to GitHub.

2. Jenkins Setup
Created a Jenkins pipeline job.
Connected GitHub repo with Jenkins using webhook / polling.
Installed required plugins (Git, Maven, Docker).

3. Build Stage
Jenkins pulled code from GitHub.
Used Maven to:
Compile the code
Run tests
Generate .jar/.war file

4. Docker Stage
Created a Dockerfile.
Jenkins built a Docker image from the application.
(Optional) Pushed image to Docker Hub.

5. SSH & Deployment Stage
Configured Jenkins ssh-agent to connect to EC2 instance.
Deployed the Docker container in EC2.
Started the application successfully.

6. Verification
Checked:
Jenkins Console Output
Running containers using docker ps
Application logs using docker logs <container-id>
App successfully responded on EC2 public IP.
