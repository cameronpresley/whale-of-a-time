Write-Host 'Grabbing the latest version of the .NET SDK'

# Let's pull the latest version of the .NET SDK
docker pull mcr.microsoft.com/dotnet/sdk:6.0

Write-Host 'Let''s run the .NET SDK in an interactive shell'
docker run --name "demo1" -it --rm mcr.microsoft.com/dotnet/sdk:6.0

# Script 
# mkdir app && cd app
# dotnet --version
# dotnet new console --name HelloWorld
# cd HelloWorld/
# dotnet run
# docker cp .\container-commands.sh demo1:container-commands.sh
