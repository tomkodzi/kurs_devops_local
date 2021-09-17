Simple frontend application used for tasks management (currently Read only).

# Requirements
- node
- npm

# Container environment
- Docker

# Launching

## Development
```shell
npm i
npm run local
```

## Production
```shell
npm run build

# copy files from `build/` directory to the nginx share directory
cp -a build/. /usr/share/nginx/html

# remove existing nginx conf
rm /etc/nginx/conf.d/default.conf

# put your own nginx configuration to the desired location
cp nginx/nginx.conf /etc/nginx/conf.d/default.conf

# restart nginx server
service nginx restart
```

## Container environment

## build image
docker build -t frontend-todos:1.0 .

## run container
docker run -p 80:80 --network todos-net --name frontend-todos frontend-todos:1.0