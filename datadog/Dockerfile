FROM gcr.io/datadoghq/agent

RUN pip install 'apache-airflow[statsd]'
RUN pip install 'datadog'
ADD conf.d/airflow.yaml /etc/dd-agent/conf.d/airflow.yaml
ADD datadog.yaml /etc/dd-agent/datadog.yaml