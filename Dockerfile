FROM astrocrpublic.azurecr.io/runtime:3.3-11

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install apache-airflow-providers-google

RUN pip install apache-airflow-providers-postgres



