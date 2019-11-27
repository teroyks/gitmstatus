FROM python:3.8-alpine

RUN apk add --no-cache git

COPY requirements.txt /
RUN pip install -r requirements.txt

ADD gitmstatus /

# mount current dir to /tmp when running the container
# docker run --rm -t -v $PWD:/tmp gitmstatus
RUN cd /tmp

# arguments are included when using entrypoint & empty cmd
ENTRYPOINT ["/gitmstatus"]
CMD []
