#!/bin/bash
mkdir bin #
mkdir pkg #
javac -cp "./libs/*" -d "./bin" src/*.java #
javac -cp "./libs/*" -d "./pkg" src/DAO/*.java #
echo "Class good"
touch manifest.txt 
echo "Manifest-Version: 1.0 " > manifest.txt 
echo "Created-By: Vadim " >> manifest.txt 
echo "Main-Class: Main " >> manifest.txt 
echo "Class-Path: libs/commons-cli-1.3.1.jar libs/commons-codec-1.10.jar libs/commons-lang3-3.5.jar libs/flyway-core-4.1.2.jar libs/h2-1.4.194.jar libs/log4j-api-2.8.2.jar libs/log4j-core-2.8.2.jar" >> manifest.txt  
jar cvmf manifest.txt Kondratenkov_Vadim.jar -C ./bin / ./libs/ ./res ./pkg #
rm manifest.txt 
echo "Jar good"
rm -rf bin #
rm -rf pkg #
