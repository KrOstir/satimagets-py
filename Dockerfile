FROM continuumio/anaconda3

LABEL maintainer="Kristof Ostir"

RUN apt-get update --fix-missing && \
    apt-get clean

# Add conda-forge as main channel
# RUN conda config --add channels conda-forge
# RUN conda config --set channel_priority strict

# Update Anaconda
RUN conda update --all

# Install shapely, rasterio, GDAL
RUN conda install shapely && \ 
    conda install -c conda-forge \
        rasterio \
        gdal \
        psycopg2

# PIP install
RUN pip install geojson
