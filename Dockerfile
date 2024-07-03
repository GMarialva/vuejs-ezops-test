FROM nginx:stable-alpine

RUN addgroup -S nginx && adduser -S nginx -G nginx

COPY ./dist /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]