FROM erdonline/jdk8-yum-go:latest

MAINTAINER martin114@foxmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN mkdir -p /martin-extension-monitor

WORKDIR /martin-extension-monitor

EXPOSE 9601

ADD ./martin-extension/martin-extension-monitor/target/martin-extension-monitor.xjar ./

ADD ./martin-extension/martin-extension-monitor/target/xjar.go ./

RUN go version

RUN go build xjar.go

ENTRYPOINT ./xjar java ${JAVA_OPTS} -Djava.security.egd=file:/dev/./urandom -jar martin-extension-monitor.xjar
