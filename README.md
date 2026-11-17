# Titanic Survival Prediction – MLOps Project

## About the Project

This project is based on the Titanic dataset. The main goal is to predict whether a passenger would survive or not based on details such as age, passenger class, gender, fare, family size, and other features.

I started this project as a machine learning prediction application and extended it by adding different MLOps tools. The idea was to understand how a machine learning model can be integrated into an application and how its data and performance can be monitored.

The application uses Flask for the user interface and prediction logic. I also worked with Apache Airflow, Redis, PostgreSQL, Prometheus, Grafana, and Docker to build the MLOps workflow.

## Technologies Used

- **Python** – Main programming language
- **Pandas & NumPy** – Data processing and manipulation
- **Scikit-learn** – Model training and prediction
- **Random Forest** – Machine learning algorithm
- **Flask** – Web application
- **Redis** – Feature store for storing passenger features
- **Alibi Detect** – Data drift detection using the KS test
- **Apache Airflow** – Workflow orchestration
- **PostgreSQL** – Airflow metadata database
- **Prometheus** – Application metrics collection
- **Grafana** – Monitoring dashboards
- **Docker** – Containerization
- **Docker Hub** – Storing the custom Docker image

## Project Workflow

The project follows this general workflow:

1. The Titanic dataset is used for data preparation and model training.
2. Passenger information is processed and required features are created.
3. A Random Forest model is trained and saved for later use.
4. A Flask application loads the trained model and accepts passenger details through a web form.
5. The application processes the input and generates a survival prediction.
6. Redis is used as a feature store for historical passenger data.
7. Alibi Detect compares incoming data with reference data to identify possible data drift.
8. Prometheus collects application metrics, including prediction counts and drift detections.
9. Grafana is used to visualize the monitoring metrics.
10. Apache Airflow is used to manage the data workflow.

## Key Features

- Predicts Titanic passenger survival using a Random Forest model.
- Provides a simple web interface using Flask.
- Stores historical passenger features in Redis.
- Checks for data drift using Alibi Detect and the Kolmogorov-Smirnov (KS) test.
- Tracks prediction and drift counts using Prometheus.
- Visualizes application metrics through Grafana.
- Uses Apache Airflow for workflow orchestration.
- Uses Docker to manage the project services.

## Project Structure

```text
Titanic-Survival-Prediction/
│
├── application.py
├── dags/
├── src/
│   ├── logger.py
│   └── feature_store.py
│
├── artifacts/
│   └── models/
│       └── random_forest_model.pkl
│
├── templates/
│   └── index.html
│
├── static/
│   └── style.css
│
├── include/
├── tests/
├── requirements.txt
├── Dockerfile
├── prometheus.yml
└── README.md
```

*Note: Update this structure to match the final folders and files in your repository.*

## Getting Started

### 1. Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd Titanic-Survival-Prediction
```

### 2. Create a Virtual Environment

```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Start the Required Services

Make sure Redis is running and the historical feature data is available.

For the Airflow workflow, start the Astro development environment:

```bash
astro dev start
```

Make sure the required PostgreSQL, Redis, Prometheus, and Grafana configurations are in place.

### 5. Run the Flask Application

```bash
python application.py
```

Open the application in your browser:

```text
http://localhost:5001
```

Enter the passenger details and submit the form to get a survival prediction.

## Monitoring

Prometheus is used to collect application metrics through the Flask `/metrics` endpoint.

The project tracks:

- Total number of predictions.
- Number of times data drift is detected.

Grafana is used to visualize the collected metrics.

Default local service addresses:

| Service | URL |
|---|---|
| Flask Application | http://localhost:5001 |
| Airflow | http://localhost:8080 |
| Prometheus | http://localhost:9090 |
| Grafana | http://localhost:3000 |

## Docker Hub

The custom Airflow Docker image is available on Docker Hub:

**Repository:** `aakash11m/titanic-airflow`

Pull the image using:

```bash
docker pull aakash11m/titanic-airflow:latest
```

The image contains the built environment, but the project files, configuration, and external data services may still need to be provided separately.
