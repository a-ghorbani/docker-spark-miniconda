# Apache Spark+Anaconda on Docker 

This docker is based on [this](https://hub.docker.com/r/aghorbani/docker-spark) spark 2 docker which uses Anacona3 as its Python interpreter.

## Pull the image from Docker Repository

```
docker pull aghorbani/spark-anaconda:2.0.2-3.4
```

## Running the image

```
docker run -it -p 8088:8088 -p 8042:8042 -p 4040:4040 -h sandbox aghorbani/spark-anaconda:2.0.2-3.4 bash
```

For further details on the spark part of this image have a look [here](https://hub.docker.com/r/aghorbani/docker-spark).
