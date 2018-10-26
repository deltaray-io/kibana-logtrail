FROM docker.elastic.co/kibana/kibana:6.4.2

RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.30/logtrail-6.4.2-0.1.30.zip
COPY logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
