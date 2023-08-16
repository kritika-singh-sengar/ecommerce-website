### STAGE 1: Build ###
FROM node:current-alpine3.16 AS build
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install --force
COPY . .
RUN npm run build
### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/frontend-application /usr/share/nginx/html

# FROM node:current-alpine3.16 AS build
# WORKDIR /usr/src/app
# COPY package.json package-lock.json ./
# RUN npm install --force
# COPY . .
# RUN npm run build
# FROM nginx:1.17.1-alpine
# COPY ssl/server.crt /etc/nginx/certs/
# COPY ssl/server.key /etc/nginx/certs/
# RUN ls /etc/nginx/certs/
# COPY nginx.conf /etc/nginx/nginx.conf
# COPY --from=build /usr/src/app/dist/ui /usr/share/nginx/html