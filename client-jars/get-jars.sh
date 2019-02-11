# !/bin/bash

# 1st column is the JAR that depends on a sonar-plugin-api
awk -F "\"*,\"*" '{print $1}' $PWD/../maven-dataset.csv | sed -e 's/^"//g' | while read artifact
do
	echo -n "Downloading $artifact... "
	mvn -q dependency:copy -DoutputDirectory=$(pwd) -Dartifact=$artifact:jar
	echo "Done."
done

