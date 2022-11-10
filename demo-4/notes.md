# Steps for creating a DockerFile
## Choose a base image
- Should contain the minimum tooling needed to build your application
- Most languages have a recommended base image, for .NET, we can use [this SDK image](https://hub.docker.com/_/microsoft-dotnet-sdk/) as our base

```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:6.0
```

## Set working directory
The container will set you in root directory, which is where you don't want an application to run. As such, it's recommended to set your Working Directory (WORKDIR) to a new folder

```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /app # This creates a folder at root called app and will set our directory there
```

## Determine What Files We Need To Copy
- Need to copy source files, but don't included compiled/built files as they'd be created as part of the build steps

```Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:6.0
COPY FirstContainer/* .
```

If you know that ignored files live in a directory or have a certain name, you can create a _.dockerignore_ file and when `docker build` is invoked, files that would be ignored won't be copied over

## What steps do we need to run to build our application?

For .NET, if you're wanting to just run the application, you can use `dotnet run`. However, this isn't a good solution for distributed software, so recommended to use `dotnet restore` followed by `dotnet publish`

```Dockerfile
RUN dotnet restore 
RUN dotnet publish -c Release -o out
```
## What to do when container starts?
It's required to have a `RUN` or `ENTRYPOINT` command to be the final command of the container. In addition, this command should keep running until the application is terminated.

For .NET, this will be the `dotnet` command with the correct dll

```Dockerfile
ENTRYPOINT [ "dotnet", "out/FirstContainer.dll" ]
```