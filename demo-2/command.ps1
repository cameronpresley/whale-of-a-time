# Searching through DockerHub, we find an entry with multiple versions available
# https://hub.docker.com/_/postgres/

Write-Host 'Pulling down postgres:15.0-alpine image'
docker pull postgres:15.0-alpine

Write-Host 'Creating postgres container'
# Breaking down the command
# --name -> What do we refer to the container as?
# -e -> Setting an environment variable for the container
# -d -> Run detatched (e.g. don't lock the UI thread)
# -p -> Port Forwarding (e.g. have the port from local machine map to port on container)
docker run `
 --rm `
 --name database `
 -p 5432:5432 `
 -e POSTGRES_PASSWORD=SuperCoolPassword! `
 -e POSTGRES_DB=Weather `
 -d `
 postgres:15.0-alpine


