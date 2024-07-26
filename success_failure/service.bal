import ballerina/http;
import ballerina/log;
import ballerina/io;

service /srvc on new http:Listener(8080) {
    resource function get success() returns string|error {
        log:printInfo("Request received at /success endpoint");
        return "Successful";
    }

    resource function get failure() returns error? {
         log:printInfo("Request received at /failure endpoint");
        return error("Error");
    }

    resource function get testlog() returns string|error? {
        string diff = "diff value";
        string ctx = "context value";
        log:printInfo(string `Executed`, elapsedTime = diff, context = ctx);
        return "Successful";
    }

    resource function get logwithquotes() returns string|error? {
        log:printInfo("This is a \"log message\" with double quotes. This is a log message with 'single' quotes.");
        io:println("This is the \"second entry\" with double quotes printed using io:println");
        return "Successful";
    }
}
