#!/bin/bash
# Downloads the spring-loaded lib if not existing and runs the full all-in-one
# (Alfresco + Share + Solr) using the runner project
#springloadedfile=~/.m2/repository/org/springframework/springloaded/1.2.0.RELEASE/springloaded-1.2.0.RELEASE.jar
springloadedfile=C:/Users/idugalic/.m2/repository/org/springframework/springloaded/1.2.0.RELEASE/springloaded-1.2.0.RELEASE.jar
if [ ! -f $springloadedfile ]; then
mvn validate -Psetup
fi
MAVEN_OPTS="-javaagent:$springloadedfile -noverify -Xms512m -Xmx2G -XX:PermSize=512m" mvn install -Prun