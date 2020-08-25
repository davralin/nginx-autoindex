FROM nginx:stable-alpine
LABEL maintainer="davralin@davralin.work"
RUN sed '/default_type/a \ \ \ \ server_tokens off;' -i /etc/nginx/nginx.conf
RUN sed '/server_name/a \ \ \ \ auto_index\ \ \ on;' -i /etc/nginx/conf.d/default.conf
