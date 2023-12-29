server {
    listen 80;
    listen [::]:80;

    server_name denlove.ru www.denlove.ru;
        
    location / {
        proxy_pass http://web:8000;
        include proxy_params;
    }
}