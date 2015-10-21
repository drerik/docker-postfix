# Postfix
A base image for postfix.
Un modified, this image starts up a postfix server accepting relay connections on port 25 without authorization on the machines subnet.

Uses supervisord to start up postfix and rsyslog.

# Build
To build
```
docker build -t postfix .
```


# Run
Start up your container
```
docker run -d --name postfix postfix
```

And map you applicatin container to it to access postfix on port 25:
```
docker run -d --name yourapp --link postfix yourapp
```