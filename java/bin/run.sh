#/bin/bash

# Build/Compile
javac -d /usr/apps/helloworld/classes /usr/apps/helloworld/src/HelloWorld.java

# Run/Execute
java -javaagent:/opt/newrelic/newrelic.jar -cp /usr/apps/helloworld/classes HelloWorld
