Write-Host 'Grabbing the latest version of the .NET SDK'

# Let's pull the latest version of the .NET SDK
docker pull mcr.microsoft.com/dotnet/sdk:6.0

Write-Host 'Let''s run the .NET SDK in an interactive shell'
docker run -it --rm mcr.microsoft.com/dotnet/sdk:6.0

# Script 
# mkdir app && cd app
# dotnet --version
# dotnet new console --name HelloWorld
# cd HelloWorld/
# dotnet run

