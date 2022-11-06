# Steps for creating a DockerFile
## Choose a base image
- Should contain the minimum tooling needed to build your application
- Doing basic research, we can use [this SDK image](https://hub.docker.com/_/microsoft-dotnet-sdk/) as our base

```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:6.0
```
## Determine What Files We Need To Copy
- Typically need to copy everything in the project folder, but not the bin/obj folders
```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY FirstContainer/* .
```