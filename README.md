# Recipe Django API
The `Recipe Django API` providing a REST API for users to manage recipe with their customs ingredients.
It's also supporting the recipe filtering using tags. Full API documentation can be found on [Recipe Api Docs](nuzulul.site/recipe-app/api/docs).

## Technologies used in applications
- [Python 3.9](https://docs.python.org/3.9/)
- [Django 4.1.2](https://docs.djangoproject.com/en/4.1/)
- [Django Rest Framework](https://www.django-rest-framework.org/)
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)
- [PostgreSQL 13](https://www.postgresql.org/docs/)

## How to run the application
### Prerequisite
You'll need [Docker Desktop or Docker](https://www.docker.com/products/docker-desktop/) and Docker Compose installed using preferred method
### Copy `.env.sample` into `.env`
**Note**: Overriding all the credentials are recommended but not required
### Building up the docker environtment
```
docker-compose build
```
### Starting up the server
```
docker-compose up
```
### Run the test and linting
```
docker-compose run --rm app sh -c "python manage.py test && flake8"
```
### Create Super User
```
docker-compose run --rm app sh -c "python manage.py createsuperuser"
```

## Accessing the apps using local browser
### Admin url
```
http://localhost:8000/admin/
```
### Api Docs url
```
http://localhost:8000/api/docs/
```

Credits: [Nuzulul Aulia](https://github.com/nuzulul19) - 2022
