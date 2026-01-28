FROM nginx
LABEL Name=thingy Version=0.0.1
RUN apk add --no-cache fortune
ENTRYPOINT ["sh", "-c", "fortune -a | cat"]
COPY . /usr/share/nginx/html
