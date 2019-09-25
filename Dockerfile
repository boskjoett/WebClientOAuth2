FROM mcr.microsoft.com/dotnet/core/aspnet:3.0

WORKDIR /app

# Copy binaries from local relative path to WORKDIR in image
COPY MvcHybrid/bin/Release/netcoreapp3.0/publish/ ./

EXPOSE 80

ENTRYPOINT ["dotnet", "MvcHybrid.dll"]
