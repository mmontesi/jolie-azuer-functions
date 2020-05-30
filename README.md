# jolie-azure-functions
This a simple example to show hot to use the new Azure Functions custom handlers (https://docs.microsoft.com/en-gb/azure/azure-functions/functions-custom-handlers) to run Jolie code.
## Instructions
1. Clone this repo
2. Create a jolie_bin directory and copy there the content of your current Jolie installation (see JOLIE_HOME env)
3. Install Azure Functions Core Tools (https://github.com/Azure/azure-functions-core-tools)
4. Make *jolie_func_executor.sh* script executable
5. Run *func start*
6. Browse to http://localhost:7071/api/greet?name=<...>

## Step by step guide
Tested on Ubuntu 20.04

__Install Java__

    sudo apt install openjdk-11-jdk

    sudo apt install unzip

__Install Jolie__

    wget https://github.com/jolie/jolie/releases/download/v1.9.0/jolie-1.9.0.jar

    sudo java -jar jolie-1.9.0.jar 
  *(leave all defaults)*


__Install Azure Func core tools__

Follow instructions: https://github.com/Azure/azure-functions-core-tools#linux

__Copy Jolie binaries__

    mkdir jolie_bin

    cp -r /usr/lib/jolie/* ./jolie_bin/

__Run__

    chmod +x jolie_func_executor.sh

    func start
