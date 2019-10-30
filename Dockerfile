FROM centos:8
LABEL mainteiner="Angel Roy Bernal"

RUN yum update -y
RUN yum install python3 python3-pip -y

COPY . /opt/
WORKDIR /opt/
RUN pip3 install -r requirements.txt

EXPOSE 5000
ENTRYPOINT [ "python3", "/opt/app.py" ]