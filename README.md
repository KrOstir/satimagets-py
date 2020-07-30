# Anaconda Python with geospatial database for satellite images

Docker container with a bootstrapped installation of [Anaconda](http://continuum.io/downloads) (based on Python 3.7) with geospatial extensions.

Everything that gives [continuumio/anaconda3
](https://hub.docker.com/r/continuumio/anaconda3) and more:

* [GDAL](http://www.gdal.org/)
* [rasterio](https://mapbox.github.io/rasterio/)
* 
The Anaconda distribution is installed into the `/opt/conda` folder and ensures that the default user has the `conda` command in their path.


## Basic Use

You can download and run this image using the following commands:

```bash
docker pull krostir/satimagets-py
docker run -i -t krostir/satimagets-py /bin/bash
```

Alternatively, you can start a Jupyter Notebook server and interact with Anaconda via your browser:

```bash
docker run -i -t -p 8888:8888 krostir/satimagets-py conda "install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='0.0.0.0' --port=8888 --no-browser"
```

You can then view the Jupyter Notebook by opening `http://localhost:8888` in your browser, or `http://<DOCKER-MACHINE-IP>:8888` if you are using a Docker.
