# jolie-azure-functions
This a simple example to show hot to use the new Azure Functions custom handlers (https://docs.microsoft.com/en-gb/azure/azure-functions/functions-custom-handlers) to run Jolie code.
## Instructions
1. Clone this repo
2. Create a jolie_bin directory and copy there the content of your current Jolie installation (see JOLIE_HOME env)
3. Install Azure Functions Core Tools (https://github.com/Azure/azure-functions-core-tools)
4. Make *jolie_func_executor.sh* script executable
5. Run *func start*
6. Browse to http://localhost:7071/api/greet?name=<...>
