FROM ubuntu:18.04

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y curl python3-pip git
RUN pip3 install github3.py
RUN pip3 install trains

COPY get_stats.py /get_stats.py
RUN  chmod u+x /get_stats.py
ENTRYPOINT ["python3",  "/get_stats.py"]
