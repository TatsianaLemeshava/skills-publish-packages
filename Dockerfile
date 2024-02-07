#FROM nginx:1.24-alpine
#COPY . /usr/share/nginx/html
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019
COPY . ./
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2019
COPY . ./
EXPOSE 80
