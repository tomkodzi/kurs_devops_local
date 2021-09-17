# Requirements
- prepared dump.sql file in dump/ directory

# Launching

## Build image
```docker build -t database-todos:1.0 .```

## Run Container
```docker run -it -d --network todos-net --env="MYSQL_ROOT_PASSWORD=somepassword" --name database-todos database-todos:1.0 ```

or 

```docker run -it -d --network todos-net --env="MYSQL_ALLOW_EMPTY_PASSWORD=TRUE" --name database-todos database-todos:1.0 ```
