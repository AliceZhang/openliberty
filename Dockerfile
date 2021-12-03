FROM open-liberty:21.0.0.8-full-java8-openj9

COPY liberty/server.xml /config/
#COPY liberty/jvm.options /config/
#COPY liberty/resources/security/* /config/resources/security/
#COPY liberty/lib/* /config/lib/

COPY liberty/*.war /config/apps/

# This script will add the requested XML snippets, grow image to be fit-for-purpose and apply interim fixes
# https://github.com/WASdev/ci.docker

EXPOSE 9080 9080