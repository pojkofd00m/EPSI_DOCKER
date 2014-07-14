cd /vagrant
cd base
docker BUILD –t =”base/latest” ./
cd ../data
docker BUILD –t=”data/latest” ./
cd ../mysql
docker BUILD –t=”mysql/latest” ./
cd ../nginx   
docker BUILD –t=”nginx/latest” ./
cd ../php-fpm1
docker BUILD –t=”php-fpm/latest” ./
cd ../php-fpm2
docker BUILD –t=”php-fpm2/latest” ./
cd ../
docker images
docker run –d mysql/latest
docker run -d -volumes-from mysql/latest data/latest
docker run –d php-fpm1/latest
docker run –d php-fpm2/latest
docker run –d –p 80:80 nginx/latest
docker ps
