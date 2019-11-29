FROM ubuntu:18.04
RUN adduser -D -u 1000 helmet
USER helmet
CMD echo "Hello"
