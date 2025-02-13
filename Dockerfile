# A simple Dockerfile to get the script `sum.rb` to run in a container.

FROM alpine:3.19

WORKDIR /app

COPY sum.rb .

RUN apk update && \
    apk add ruby

ENTRYPOINT ["ruby", "sum.rb"]
