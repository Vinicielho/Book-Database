this is a java-spring project i made to study those technologies, if you would like to see it work:

Build the project with "mvn clean package -DskipTests", as of now, this is the most concise way to have it compile without a much different testing set up (tests would fail because there is no postgresql database up for it to connect to) which in my opinion would invalidate the testing step anyway. I considered many ways to have it be simpler, such as with multi-stage docker builds and such, but i dont like those either for some reasons. If anyone care to teatch me something about this whole situation iam listening!

create an .env files with the following variables:
POSTGRES_CONTAINER_NAME=
POSTGRES_CONTAINER_PORT=
POSTGRES_DB_PORT=
POSTGRES_DB_NAME=
POSTGRES_DB_USER=
POSTGRES_DB_PASSWORD=

APP_CONTAINER_NAME=
APP_CONTAINER_PORT=
APP_PORT=

Then then use docker-compose and let'er rip. BUT BE WARNED!: it is configured to NOT save data localy, it keeps it all in the container because this is a study system and i wanted it to be contained! if you somehow use this to actually manage a library of your own, give the docker-compose a volumes field.
As of now there are no endpoints currently working, i will document them as there would.