#for dev
#FROM node:16-alpine
FROM node:12.2.0-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]

#for prod
#FROM node:16-alpine AS build
#WORKDIR /app

#COPY . .
#RUN npm install
#RUN npm run build
# Serve Application using Nginx Server
#FROM nginx:alpine
#COPY --from=build /app/dist/project-name/ /usr/share/nginx/html
#EXPOSE 80