FROM alpine:3.7

# Installs python 2.7 with various packages for pymssql support
RUN apk add python python-dev \
            py-pip ipmitool ipmitool \
            freetds-dev \
            g++ gcc unixodbc-dev \
            libffi-dev openssl-dev

ADD ./requirements.txt .
RUN pip install -r requirements.txt
