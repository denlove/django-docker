# Django-docker project

Django + PostgresQL + nginx + Gunicorn + python

> [!NOTE]
> There are _production_ and _development_ versions in this project.
> In dev, there is no **nginx** and **Gunicorn**. Just **Django** and **PostgresQL**.

## Installation with Docker Compose

#### 1. Give permissions to entrypoint files 

```bash
// For dev
chmod +x app/entrypoint.sh

// For prod
chmod +x app/entrypoint.prod.sh
```

#### 2. Build and up docker compose

```bash
// For dev
docker compose up -d --build

// For prod
docker compose -f docker-compose.prod.yml up -d --build
```

#### 3. Run the migrations

```bash
// For prod
docker compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput
```

#### 4. Collect static files from each of your applications 

```bash
// For prod
docker compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear
```
<br/>

> [!TIP]
> You can check logs in running containers like that:
> ```
> docker compose -f docker-compose.prod.yml logs -f
> 
> ```

