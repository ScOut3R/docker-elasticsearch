FROM java:8-jre

ENV ES_PKG_NAME elasticsearch-1.7.1

# Install Elasticsearch.
RUN \
  cd / && \
  wget https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

RUN /elasticsearch/bin/plugin -install mobz/elasticsearch-head

COPY elasticsearch.yml /elasticsearch/config/

EXPOSE 9200
EXPOSE 9300

CMD ["/elasticsearch/bin/elasticsearch"]
