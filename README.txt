this is a java-spring project i made to study those technologies, if you would like to see it work create an .env files with the following variables:

POSTGRES_CONTAINER_NAME=
POSTGRES_CONTAINER_PORT=
POSTGRES_DB_PORT=
POSTGRES_DB_NAME=
POSTGRES_DB_USER=
POSTGRES_DB_PASSWORD=

APP_CONTAINER_NAME=
APP_CONTAINER_PORT=
APP_PORT=
ARTIFACT_NAME=

Then then use docker-compose and let'er rip. BUT BE WARNED!: it is configured to NOT save data localy, it keeps it all in the postgres container because this is a study project and thus i want to be more agile about testing things and throwing them away if i need to. If you want persistent storage, configure it properly.

As of now there are no endpoints currently working, i will document them as there would.