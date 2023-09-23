FROM ubuntu:latest

RUN apt update 
RUN apt install nodejs npm git nano -y


RUN mkdir /app

#the orginal repo has a problem when syncronizing all data from aaps. The forked repo seems to solve this
#RUN git clone https://github.com/nightscout/cgm-remote-monitor.git /app
RUN git clone https://github.com/NonLoSoK/cgm-remote-monitor.git /app


RUN cd /app && npm install


EXPOSE 1337

WORKDIR /app

CMD ["node", "server.js"]
