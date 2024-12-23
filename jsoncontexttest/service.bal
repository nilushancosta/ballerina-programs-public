import ballerina/http;
import ballerina/log;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {
    resource function get contextjson() returns string|error {
        json j = {
            "httpStatusCode": 201,
            "resource": {
                "resourceId": "70004de5-6bd8",
                "version": "1"
            },
            "serverResponseHeaders": {
                "Content-Security-Policy": "frame-src 'self';",
                "Content-Type": "application/fhir+json; charset=utf-8",
                "Date": "Thu, 31 Oct 2024 02:37:21 GMT",
                "ETag":"W/\"1\"",
                "Last-Modified": "Thu, 31 Oct 2024 02:37:22 GMT",
                "Location": "https://localhost:9090/_history/1",
                "Server": "Kestrel",
                "Strict-Transport-Security": "max-age=31536000; includeSubDomains",
                "Transfer-Encoding": "chunked",
                "X-Content-Type-Options": "nosniff",
                "X-Frame-Options": "SAMEORIGIN",
                "X-Request-ID": "6b43111c2d71"
            }
        };
        log:printInfo("This is a log entry", cont = j);
        return "function execution complete";
    }
}
