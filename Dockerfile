#FROM nginx:1.24-alpine
#COPY . /usr/share/nginx/html
FROM node:slim
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
CMD node index.js
