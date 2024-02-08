#FROM nginx:1.24-alpine
#COPY . /usr/share/nginx/html
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019
COPY . ./
FROM node:slim
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
CMD node index.js
