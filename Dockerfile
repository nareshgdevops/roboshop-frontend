FROM                nginx:1.24
RUN                 rm -rf /usr/share/nginx/html/*
COPY                ./ /usr/share/nginx/html/
COPY                default.conf /etc/nginx/conf.d/default.conf