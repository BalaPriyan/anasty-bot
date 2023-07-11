
FROM anasty17/mltb:latest


WORKDIR /maruf

RUN apt install git -y
COPY . .
RUN git clone https://github.com/BalaPriyan/mirror-leech-telegram-bot
RUN cd /maruf/m*t*t;pip3 install --no-cache-dir -r requirements.txt 

RUN cd m*t*t;bash start.sh
