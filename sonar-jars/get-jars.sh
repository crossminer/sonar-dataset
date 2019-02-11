# !/bin/bash

# 2nd column is the sonar-plugin-api the JAR depends on
awk -F "\"*,\"*" '{print $2}' $PWD/../maven-dataset.csv | while read artifact
do
	echo -n "Downloading $artifact... "
	mvn -q dependency:copy -DoutputDirectory=$(pwd) -Dartifact=$artifact:jar
	echo "Done."
done

