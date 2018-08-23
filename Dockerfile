FROM docker.elastic.co/kibana/kibana:6.3.2

RUN kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.29/logtrail-6.3.2-0.1.29.zip
COPY logtrail.json /usr/share/kibana/plugins/logtrail/logtrail.json
