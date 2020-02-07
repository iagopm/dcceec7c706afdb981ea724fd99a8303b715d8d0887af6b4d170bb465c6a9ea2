FROM ubuntu:18.04
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
RUN apt install openjdk-8-jdk -y
RUN apt install curl -y
RUN apt install wget -y



RUN mkdir /home/mcserver
RUN cd /home/mcserver
RUN wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
RUN java -Xmx1024M -Xms1024M -jar server.jar nogui
RUN sed -i 's/false/true/g' eula.txt



RUN mkdir /home/pyWebServer
RUN cd /home/pyWebServer
RUN apt install python3 -y
RUN apt install python3-pip -y



RUN pip3 install bottle


RUN wget https://raw.githubusercontent.com/iagopm/dcceec7c706afdb981ea724fd99a8303b715d8d0887af6b4d170bb465c6a9ea2/master/helloworldbottle.py
RUN python3 helloworldbottle.py


