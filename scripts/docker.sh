!#/bin/sh
# WM
docker build -t wmms .
docker tag wmms:latest trekcampy/wmms:latest
docker push trekcampy/wmms:latest

# mongodb
docker run --name wm-mongo -d mongo:4.4.5

# redis
docker run --name my-redis -d redis:6.2.4
