# Nginx Unit Example

## Preliminary steps

Install and start nginx unit via docker
```sh
docker-compose up
```

Nginx Unit is already configured through the image building process from Docker. It can be reconfigured with this:
```sh
cd config
./configure.bash
```

## Nginx Unit sample apps

Nginx Unit modules are shipped with sample apps.

### Ruby
```sh
http localhost:8700
```

