make runelastic:
	docker run \
    -e "discovery.type=single-node" \
    -e "cluster.name=docker-cluster" \
    -e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
    -p 9200:9200 \
    docker.elastic.co/elasticsearch/elasticsearch-oss:7.6.0
