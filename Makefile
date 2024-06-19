up_ci:
	docker-compose -f docker-compose-ci.yaml up -d

exit:
	docker stop $(docker ps -q)

remove:
	docker rm $(docker ps -aqf status=exited)

remove networks:
	docker network prune