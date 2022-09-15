FROM yanivomc/alpine-oraclejdk8:slim
WORKDIR /app
COPY ./spring-music.jar ./code/spring-music.jar
ENV DBHOST=MYSQL
ENV DBURL=mydb.com
WORKDIR /app/code
CMD java -jar -Dspring.profiles.active=none spring-music.jar
