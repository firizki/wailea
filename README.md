# Wailea
Simple API mock using nc (or netcat)

## Requirement
- nc (or netcat)

## How To Use
1. Create your `response` file under directory that same with request path
    For example you want to create mock for GET /healthz
    Create file `response` under `responses/GET/healthz/`
    folder `responses` is mandatory
2. Write you response HTTP inside your `response` file
    For example to send simple 200 OK you can do this
    ```
    HTTP/1.1 200 OK
    Content-type: text/html

    OK
    ```
3. Run your script
    ```
    ./wailea.sh
    ```
4. Access from port `1080`
    ```
    curl curl localhost:1080/healthz -v
    ```
