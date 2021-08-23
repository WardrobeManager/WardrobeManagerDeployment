!#/bin/sh
# WM
docker build -t wmms .
docker tag wmms:latest trekcampy/wmms:latest
docker push trekcampy/wmms:latest

# UM
docker build -t umms .
docker tag umms:latest trekcampy/umms:latest
docker push trekcampy/umms:latest

# mongodb
docker run --name wm-mongo -d mongo:4.4.5

# redis
docker run --name my-redis -d redis:6.2.4
