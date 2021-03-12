FROM golang:latest
RUN mkdir /app
RUN mkdir /app/mnt
ADD . /app/
WORKDIR /app
ENV TZ=Asia/Yekaterinburg
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
CMD ["/app/main"]
