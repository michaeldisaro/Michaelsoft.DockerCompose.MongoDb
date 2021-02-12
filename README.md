# Michaelsoft.DockerCompose.MongoDb

These scripts compose and run a secure mongodb container.

1. Clone into the machine that has docker installed.

2. Run *chmod +x run.sh destroy.sh source-vars.sh .vars docker-compose.yml* to make file executable.

3. Create a .vars file with LF endline and UTF8 encoding with the following content:

```
export MONGO_CONTAINER_NAME="your mongo container name"
export MONGO_INITDB_DATABASE="your db name"
export MONGO_INITDB_ROOT_USERNAME="your root username"
export MONGO_INITDB_ROOT_PASSWORD="your root password"
export MONGO_INITDB_DATABASE_USER_USERNAME="your database username"
export MONGO_INITDB_DATABASE_USER_PASSWORD="your database password"
export MONGO_INITDB_DATABASE_USER_ROLES="your database mongodb role"
```

4. Run *sudo ./run.sh* to compose and run the container.

# Notes

Data is persisted on host by mounting */\<your mongo container name\>/data* to the container for data persistence.

You can connect only on unix socket at path */\<your mongo container name\>/tmp/mongodb-27017.sock*.

If you need to bind ports, uncomment ports section on *docker-compose.yml*.

Remember to keep your *.vars* file in a secure site and delete the cloned folder after use to prevent password leakage.

To clean everything just run *./destroy.sh* by provinding the same *.vars* file of first run.
