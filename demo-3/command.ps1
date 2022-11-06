# Searching through DockerHub, we find an entry with multiple versions available
# https://hub.docker.com/r/jenkins/jenkins

Write-Host 'Pulling down jenkins/jenkins:lts-jdk11 image'
docker pull jenkins/jenkins:lts-jdk11

Write-Host 'Creating jenkins container'
# Breaking down the command
# --name -> What do we refer to the container as?
# -d -> Run detatched (e.g. don't lock the UI thread)
# -p -> Port Forwarding (e.g. have the port from local machine map to port on container)
docker run `
 --name jenkins `
 -p 8080:8080 `
 -p 50000:50000 `
 jenkins/jenkins:lts-jdk11

# Command to find admin password
# docker exec -it jenkins bash -> Execute bash command in an interactive window on the container called jenkins