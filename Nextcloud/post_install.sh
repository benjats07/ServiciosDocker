container_id=$(sudo docker ps -aqf "name=nextcloud_nextcloud_docker")
docker exec -u 33 -it $container_id php occ app:disable richdocuments
docker exec -u 33 -it $container_id php occ app:disable richdocumentscore
docker exec -u 33 -it $container_id php occ app:install files_external
docker exec -u 33 -it $container_id php occ app:enable files_external
docker exec -u 33 -it $container_id php occ files_external:create Archivos local null::null --user benjamin --config datadir=/nextcloud_data
