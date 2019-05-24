FROM tomcat

RUN mkdir /data
ADD jmx_prometheus_javaagent-0.11.0.jar /data/jmx_prometheus_javaagent-0.11.0.jar
ADD prometheus-jmx-config.yaml /data/prometheus-jmx-config.yaml
ENV CATALINA_OPTS="-javaagent:/data/jmx_prometheus_javaagent-0.11.0.jar=8088:/data/prometheus-jmx-config.yaml"
