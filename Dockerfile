FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY XcExample.Api.Weather/bin/Debug/net5.0/publish/ App/
WORKDIR /App
ENTRYPOINT ["dotnet" "XcExample.Api.Weather.dll"]
ENV COMPlus_EnableDiagnostics=0
ENV DOTNET_EnableDiagnostics=0