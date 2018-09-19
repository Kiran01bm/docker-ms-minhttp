FROM microsoft/dotnet:2.1-sdk

LABEL maintainer="kiran01bm"

WORKDIR /app

# Create a new project/solution based on the web template
RUN dotnet new web

# Amend the hello world line
RUN sed -i 's/Hello World!/HelloWorld from donet!!!/g' Startup.cs

# Pack the application and its dependencies into a Release folder
RUN dotnet publish -c Release

# Run the application
ENTRYPOINT ["dotnet", "/app/bin/Release/netcoreapp2.1/publish/app.dll"]
