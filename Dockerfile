FROM node:latest as node
WORKDIR /app
COPY . .
RUN npm install -f
RUN ng build

FROM nginx:alpine
COPY --from=node /app/dist/Angular /usr/share/nginx/html
