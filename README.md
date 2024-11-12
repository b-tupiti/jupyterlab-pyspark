# Jupyterlab / Pyspark 

A containerized environment for running a jupyter notebook (using jupyter lab, because why not) and pyspark.
The base image used here is from [apache spark](https://hub.docker.com/r/apache/spark/tags)'s docker registry.

Efforts to be make this setup a bit more optimized has been skewed due to coffee shortage.


## Instructions
build the image from the Dockerfile

`
docker buildx build -t [imagename:tag] .
`

spin up container

`
docker container run --name [containername] -p 8888:8888 [imagename:tag] jupyter lab --ip=0.0.0.0
`

open the notebook: [http://localhost:8888?tag=[tag]](http://localhost:8888). 

(check console for tag, or open from console)

## PS.

No volumes were mapped during the creation of this environment. :)

