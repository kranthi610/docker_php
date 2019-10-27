1) docker build -t tut:docker_php .   #build from dockerfile . is location of Dockerfile
2) docker run -p 8000:80 tut:docker_php #start container
3) docker-compose config #check if everthing looks good in docker-compose.yml
4) docker-compose up #build from docker-compose.yml
5) docker-compose up --build #rebuild the image
