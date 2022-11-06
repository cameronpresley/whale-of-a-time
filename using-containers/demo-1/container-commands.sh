echo 'creating app directory and moving there'
mkdir app && cd app
echo 'printing installed dotnet version'
dotnet --version
echo 'creating new console application called HelloWorld'
dotnet new console --name HelloWorld
echo 'running the project'
dotnet run --project ./HelloWorld