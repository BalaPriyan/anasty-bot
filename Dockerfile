
FROM anasty17/mltb:latest


WORKDIR /maruf
RUN chmod 777 /maruf
RUN apt-get update && apt-get upgrade -y
RUN apt-get -qq install mediainfo -y
RUN apt install git -y
COPY . .
RUN git clone https://github.com/BalaPriyan/mirror-leech-telegram-bot
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt 

RUN cd m*t*t
CMD ["bash", "start.sh"]

#FROM anasty17/mltb:latest

#WORKDIR /usr/src/app
#RUN chmod 777 /usr/src/app
#RUN git clone https://github.com/BalaPriyan/mirror-leech-telegram-bot
#RUN cd /anasty-bot
#RUN apt-get update && apt-get upgrade -y
#RUN apt-get -qq install mediainfo -y
#RUN git clone https://github.com/BalaPriyan/mirror-leech-telegram-bot
#RUN pip3 install --no-cache-dir -r requirements.txt

#COPY . .
#CMD ["bash", "start.sh"]
