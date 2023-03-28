FROM ubuntu:lunar

RUN apt update

RUN apt install fortune-mod cowsay netcat-openbsd -y

ENV PATH="$PATH:/usr/games"

RUN mkdir -p wisecow

WORKDIR wisecow

ADD ./wisecow.sh .

EXPOSE 4499

CMD ["./wisecow.sh"]

