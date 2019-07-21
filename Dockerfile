FROM maven as app 
WORKDIR '/uu'
COPY . .
RUN mvn clean package 
FROM jetty 
COPY --from=app /uu/target /var/lib/jetty/webapps
