# Gateways 2020 Demo

This is a demo of GeoEDF designed for the Gateways 2020 conference. A few key features of GeoEDF are demonstrated:

1. Demonstrating the syntax of GeoEDF workflows.
2. Demonstrating how GeoEDF can be used across several domains.
3. Demonstrating how a new connector/processor can be built and tested before contribution.
4. Demonstrating how Singularity containers for connector and processor plugins can be easily built 
   using the provided recipes and help scripts.

Specifically, this demo includes the following:

1. A hydrologic data preparation workflow that acquires MODIS data from a NASA DAAC and aggregates it across each 
   of the polygons in a watershed shapefile.
2. A new Shapefile2GeoJSON processor is built and used to post-process the resulting shapefile from step 1 to make 
   it easier to visualize using map libraries like Folium.

*This container is adapted from the Pegasus Development Environment*

*Latest version of Docker is required. You will also need to run this container in privileged mode*

## Usage
1. `git clone https://github.com/geoedf/gateways2020.git`
2. `cd gateways2020`
3. `sudo chown :808 ./shared-data && chmod 775 ./shared-data && chmod g+s ./shared-data`
4. `docker build -t geoedf/gateways2020`
5. `docker run -p 8888:8888 --privileged --mount type=bind,source="$(pwd)"/shared-data,target=/home/scitech/shared-data geoedf/gateways2020`
6. In a browser window, go to `localhost:8888`, and enter `scitech` as the password.
7. Find the Hydrology.ipynb Jupyter notebook in `sample-geoedf-wf` and follow the instructions there to try out the demo GeoEDF workflow.
