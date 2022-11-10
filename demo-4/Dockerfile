# Set Build Steps
# 1). Start with a base image (the SDK for .NET)
FROM mcr.microsoft.com/dotnet/sdk:6.0

# 2). Set our working directory (best practice)
WORKDIR /app

# 3). Let's copy the files that we need to build our application
COPY FirstContainer/. .

# 4). Let's run the appropriate dotnet commands
# RUN dotnet restore 
# RUN dotnet publish -c Release -o out

# 5). Let's set the command to run when the container starts
# ENTRYPOINT [ "dotnet", "out/FirstContainer.dll" ]
