# Apache Spark+Miniconda on Docker 

This docker is based on [this](https://hub.docker.com/r/aghorbani/docker-spark) spark 2 docker, and additionally installs miniconda.

Installation instruction of miniconda is taken from [gurvin/spark-worker-base](https://github.com/UNINETT/kubernetes-apps/tree/abf61f8/spark/dockerfiles/worker-base).

## Pull the image from Docker Repository

```
docker pull aghorbani/spark-miniconda:2.0.2-3.4
```

## Build the image

```
docker build --rm -t aghorbani/spark-miniconda:2.0.2-3.4  .
```

## Running the image

```
docker run -it -p 8088:8088 -p 8042:8042 -p 4040:4040 -p 8888:8888 -h sandbox aghorbani/spark-miniconda:2.0.2-3.4 bash
```

For further details on the spark part of this image have a look [here](https://hub.docker.com/r/aghorbani/docker-spark).
