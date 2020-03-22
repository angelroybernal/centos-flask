FROM centos:8

RUN yum update -y
RUN yum install python3 python3-pip -y

COPY ./entrypoint.sh ./
COPY ./app/ /opt/
WORKDIR /opt/
RUN pip3 install -r requirements.txt

WORKDIR /
RUN chmod +x entrypoint.sh
EXPOSE 5000
ENTRYPOINT [ "/entrypoint.sh" ]
