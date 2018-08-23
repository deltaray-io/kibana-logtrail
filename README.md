[![Docker Build Status](https://img.shields.io/docker/build/tibkiss/kibana-logtrail.svg)](https://hub.docker.com/r/tibkiss/kibana-logtrail/)

# Kibana + Logtrail container
Kibana container equipped with [Logtrail plugin](https://github.com/sivasamyk/logtrail).
Logtrail configuration is set to work with Kubernetes/Helm installation of [fluentd](https://www.fluentd.org/) / [fluent-bit](https://fluentbit.io/).

## Config adjustments
### Field mappings
* `hostname`: set to `kubernetes.namespace_name`
* `program`: set to `kubernetes.labels.release` which is the Helm chart's name
* `message`: set to `log` to work with fluentd / fluent-bit
### Misc
* `keyword_suffix`: set to empty string to avoid '.keyword' append to the hostname variable

## Usage:
Replace the stable Kibana Helm chart's image with the [Docker Build](https://hub.docker.com/r/tibkiss/kibana-logtrail).
Tested with Kibana Helm chart version: 0.11.0

## License
[Apache License Version 2.0](http://www.apache.org/licenses/)
