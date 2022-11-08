FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install -f
RUN npm run 

FROM nginx:alpine
COPY --from=node /app/dist/Angular /usr/share/nginx/html
