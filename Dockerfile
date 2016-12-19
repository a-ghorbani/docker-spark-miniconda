FROM aghorbani/spark:2.0.2
MAINTAINER Asghar Ghorbani ghorbani59@gmail.com


#Install Anaconda
RUN curl -s https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh -o anaconda.sh && \
    chmod a+x anaconda.sh && \
    ./anaconda.sh -b -p /opt/anaconda3 && \
    rm ./anaconda.sh && \
    /opt/anaconda3/bin/conda install -y -q ipython notebook 

#Environment vaiables for Spark to use Anaconda Python and iPython notebook
ENV PYSPARK_PYTHON /opt/anaconda3/bin/python3
#ENV PYSPARK_DRIVER_PYTHON /opt/anaconda3/bin/ipython3
ENV PYSPARK_DRIVER_PYTHON /opt/anaconda3/bin/jupyter
ENV PYSPARK_DRIVER_PYTHON_OPTS "notebook --no-browser --port=8888 --ip='*'"

#iPython port
EXPOSE 8888

