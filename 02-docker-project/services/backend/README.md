Simple backend for CRUD operations on tasks 

# Requirements
- python3.7>
- prepared .env.file based on .env.file.example

## Development environment
- SQLite

## Production environment
- MySQL database



# Installation
python3 refers to python version 3.7 or higher
```shell script
# create virtual environment
python3 -m venv venv

# activate it
source venv/bin/activate

# install requirements
python -m pip install -r requirements.txt

# OPTIONAL - exit virtual environment
deactivate
```

# Launching

## Development environment
```shell
# this command should be launched only once and should lead to creating a dev.db file
python scripts/setup_dev.py

# this command should be used everytime
source config.sh && python app.py
```

## Production environment
Please fill required parameters or move it to the config file that will be sourced before launching.
```shell
DB_HOST=<DB_HOST> \
DB_PASSWD=<DB_PASSWD> \
DB_USER=<DB_USER> \
DB_INSTANCE_NAME=<DB_INSTANCE_NAME> \
FLASK_ENV=prod \
python app.py
```

## Container

### build image
```docker build -t backend-todos:1.0 -f Dockerfile .```

### run container
```docker run --network todos-net --name backend-todos --env-file .env.list backend-todos:1.0```

