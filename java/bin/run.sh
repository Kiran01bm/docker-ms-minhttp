#/bin/bash

# Build/Compile
javac -d /usr/apps/helloworld/classes /usr/apps/helloworld/src/HelloWorld.java

# Run/Execute
java -cp /usr/apps/helloworld/classes HelloWorld
