FROM python:3.11.0b4-alpine3.16
ENV user=bandit
RUN apk update && apk upgrade 
RUN pip install virtualenv
RUN pip install bandit
RUN mkdir -p /src
RUN addgroup -S bandit
RUN adduser -D -S -h /src -G bandit bandit
RUN chown -R bandit:bandit /src
USER ${user}
WORKDIR /src
ENTRYPOINT ["bandit"]
