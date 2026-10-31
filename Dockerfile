FROM nginx:alpine

COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY app/ /usr/share/nginx/html/

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]
