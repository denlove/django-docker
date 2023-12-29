FROM nginx:1.25.3

COPY proxy_params /etc/nginx

RUN mkdir /etc/nginx/sites-available
COPY denlove.ru /etc/nginx/sites-available

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

RUN mkdir /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/denlove.ru /etc/nginx/sites-enabled/

RUN nginx -t

RUN systemctl restart nginx