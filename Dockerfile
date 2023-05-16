FROM docker.elastic.co/logstash/logstash:7.8.0

USER root

RUN logstash-plugin install logstash-codec-avro_schema_registry
RUN mkdir -p /logstash/staging/vendor/import_data /logstash/vendor/ && \
    chown -R logstash:logstash /logstash