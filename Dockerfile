FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install -f
RUN npm run 

FROM nginx:alpine
COPY --from=node /app/index.html /usr/share/nginx/html
