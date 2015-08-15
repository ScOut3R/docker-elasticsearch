# Elasticsearch with Docker

A simple Dockerfiles to build an image for Elasticsearch to be used with Docker. The database files are placed in */data* so you might want to attach a volume there. You can set the *ESCLUSTER* environment variable to create a cluster of multiple containers with auto discovery.

The docker-compose configuration brings up a 3 member cluster.

## Cluster

    # docker-compose -f compose-cluster.yml up

And after the containers are running in another terminal determine the mapped port of one of the nodes, then you can access eshead at *http://localhost:<port>/_plugin/head*.

If you are on Windows os Mac replace localhost with the Docker VM's IP address.
