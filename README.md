# Postfix
A base image for postfix.
If left unmodified, this image starts up a postfix server accepting relay connections on port 25 without authorization on the machines subnet.

Uses supervisord to start up postfix and rsyslog.

## Build
To build
```
docker build -t postfix .
```


## Run
Start up your container
```
docker run -d --name postfix postfix
```

And map you application container to it, to access postfix on port 25:
```
docker run -d --name yourapp --link postfix yourapp
```


## Run with Docker Compose
If you want to use Docker Compose add these lines to your docker-compose.yml

```
postfix:
  build: .
  hostname: "smtp.yourserver.com"
  restart: always
```
