FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true \
    storageQueue="" \
    cosmosConnection=""

COPY . /home/site/wwwroot

RUN apt-get update && \
    mkdir -p /usr/share/man/man1 && \
    apt-get -y install openjdk-11-jre-headless && \    
    cd /home/site/wwwroot    