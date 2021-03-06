wget https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.7.2.tar.gz
tar -xvf elasticsearch-1.7.2.tar.gz
nohup elasticsearch-1.7.2/bin/elasticsearch > /dev/null 2>&1 &
sleep 10 && wget --waitretry=5 --retry-connrefused -v http://127.0.0.1:9200/
php -d memory_limit=-1 /usr/local/bin/composer require victoire/title-widget dev-master
php Tests/App/bin/console --env=ci fos:elastica:reset --no-debug