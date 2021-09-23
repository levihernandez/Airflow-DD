# Monitor Airflow with Datadog

> Start the Airflow server and deploy the DD agent container

```shell script
docker-compose up -d
```

>  rebuild the datadog image with the changes provided

`docker pull gcr.io/datadoghq/agent:latest`

> Get the Airflow 2.x DAGS via cli as json file

```bash
$ docker exec airflow_airflow-webserver_1 airflow dags list --output json > dagid.json
```

> Configure the Datadog agent integrations within the configs dir


