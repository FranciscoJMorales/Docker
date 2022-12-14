#MySql
docker run -it --rm --name mysql -p 3306:3306 --mount "src=mysqldata,target=/var/lib/mysql" -e MYSQL_ROOT_PASSWORD=mysecret mysql

#Postgres
docker run -it --rm --name postgres -p 3000:5432 --mount "src=postgresdata,target=/var/lib/postgresql/data" -e POSTGRES_PASSWORD=mysecret postgres

#MongoDB
docker run -it --rm --name mongodb -p 3000:27017 --mount "src=mongodata,target=/data/db" -e MONGO_INITDB_ROOT_USERNAME=root -e MONGO_INITDB_ROOT_PASSWORD=mysecret mongo

#NodeJS Development
docker run -it --rm --name nodehello -p 3000:3000 -p 9229:9229 -e NODE_ENV=development -v $PWD:/home/node/app --entrypoint '/bin/sh' nodehello -c 'npm install && npm run debug'