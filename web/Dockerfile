FROM node:16-alpine3.15 AS build

WORKDIR /app
COPY package.json .
# COPY package-lock.json .
COPY yarn.lock .

RUN yarn

COPY . .
RUN yarn build

FROM nginx:1.23.1-alpine
COPY --from=build /app/dist /usr/share/nginx/html
# COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]