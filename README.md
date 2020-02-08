# build image
    docker network create webpy
    docker build --compress -t python-web:1 <repo dir>
# run image
    docker run -P  --name pw -it python-web:1
# run server
    docker attach <container>
    python3 /home/manage.py runserver 0:8000
# run db
    docker run -it -p 5432:5432 --name db postgres 