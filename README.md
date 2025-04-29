# django-docker-template



## Development

```bash
docker-compose up -d
```

Prepare virtualenv
```bash
python -m venv myvenv  
```

Go to virtualevn

On Windows:
```bash
myvenv\Scripts\activate
```

On macOS and Linux:
```bash
source myvenv/bin/activate
```


Install the dependencies
```bash
pip install -r requirements.txt
```

Command for Db preparation
```bash
python manage.py migrate
```

Startup of Webserver
```bash
python manage.py runserver
```


### Create an admin user (optional)

```bash
python manage.py createsuperuser
```


### Django Ninja API

This project includes a Django Ninja module mounted at `/ninja-api/`.

#### Endpoints

- `GET /ninja-api/ping`  
  Returns a simple JSON response for testing:
  ```json
  {
    "message": "pong"
  }

- `GET /ninja-api/docs`  

    Opens the auto-generated Swagger UI documentation for all Ninja API endpoints.