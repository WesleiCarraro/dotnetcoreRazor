FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /src
COPY ["BookListRazor/BookListRazor.csproj", "BookListRazor/"]
RUN dotnet restore "BookListRazor/BookListRazor.csproj"
COPY . .
WORKDIR "/src/BookListRazor"
RUN dotnet build "BookListRazor.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "BookListRazor.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "BookListRazor.dll"]

#OBS: tive que criar 4 camadas para funcionar o docker build. 
#Pelo menos a imagem final ficou otimizada em tamanho.