FROM                redhat/ubi9
RUN                 dnf install nginx -y
RUN                 ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log
RUN                 rm -rf /usr/share/nginx/html/*
COPY                ./ /usr/share/nginx/html/
COPY                nginx.conf /etc/nginx/nginx.conf
ENTRYPOINT          ["nginx", "-g", "daemon off;"]