docker login -u fjmorales -p {password}
docker image build -t nodehello .
docker tag nodehello fjmorales/nodehello:firsttry
docker push fjmorales/nodehello
docker image ls
docker system prune -af
docker run -d --rm --name nodehello -p 3000:3000 fjmorales/nodehello:firsttry