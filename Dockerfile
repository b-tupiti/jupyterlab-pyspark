FROM spark:3.4.4-scala2.12-java11-python3-ubuntu

USER root
RUN useradd -r admin
USER admin

WORKDIR /home/admin/crwk
COPY . .

USER root
RUN apt-get update; \
    pip3 install jupyterlab; \
    pip3 install pyspark

EXPOSE 8888/tcp

USER admin