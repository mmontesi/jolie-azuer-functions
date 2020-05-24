include "runtime.iol"

execution { concurrent }

type GreetRequest:void {
    .name:string
}

interface GreeterAPI {
    RequestResponse: greet( GreetRequest )( string )
}

inputPort GreeterInput {
    Location: AzureFunctionsPort
    Protocol: http { .method = "get", .format = "html" }
    Interfaces: GreeterAPI
}

main
{    
	greet( request )( response ) {
        getVersion@Runtime()( jolie_version )
        response = "Hello, " + request.name + " (from Jolie ver. " + jolie_version + " hosted on Azure Functions)"
    }
}
