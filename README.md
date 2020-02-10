# build image
    docker network create webpy
    docker build --compress -t python-web:1 <repo dir>
# run image
    docker run -P  --name pw -it python-web:1
# run server
    docker attach <container>
    python3 /home/manage.py runserver 0:8000