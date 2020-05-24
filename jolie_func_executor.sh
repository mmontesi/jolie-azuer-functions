#!/bin/sh
echo $FUNCTIONS_HTTPWORKER_PORT
java -ea:jolie... -ea:joliex... -Djava.rmi.server.codebase=file:/./jolie_bin/extensions/rmi.jar -cp ./jolie_bin/lib/libjolie.jar:./jolie_bin/jolie.jar jolie.Jolie -l ./lib/*:./jolie_bin/lib:./jolie_bin/javaServices/*:./jolie_bin/extensions/* -i ./jolie_bin/include -C AzureFunctionsPort="\"socket://localhost:$FUNCTIONS_HTTPWORKER_PORT\"" "$@"
