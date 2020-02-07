FROM ubuntu:18.04

EXPOSE 8000
EXPOSE 8080
EXPOSE 80
EXPOSE 5432
EXPOSE 3306
EXPOSE 20
EXPOSE 21
EXPOSE 1232
EXPOSE 221
EXPOSE 25565
EXPOSE 3000

RUN apt update -y
RUN apt install net-tools -y
RUN apt install vim -y
RUN apt install curl -y
RUN apt install wget -y
RUN apt install git -y
RUN apt install python3 -y
RUN apt install python3-pip -y

RUN pip3 install Django==3.0.3

RUN git clone https://github.com/iagopm/dcceec7c706afdb981ea724fd99a8303b715d8d0887af6b4d170bb465c6a9ea2.git /home/
RUN python3 /home/manage.py runserver 0:8000