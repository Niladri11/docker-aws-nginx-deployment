FROM nginx:alpine
LABEL maintainer="Niladri" purpose="creating new image"
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY html/ /usr/share/nginx/html
RUN mkdir -p /var/log/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
