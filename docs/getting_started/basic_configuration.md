# Basic Configuration

The gateway is fully configurable using a `config.yaml` config file.

## Indicating Config File Location

Set the `GATEWAY_CONFIG` environment variable to the parent directory of your `config.yaml` file.

## Configuring

### Logger

Configure the log output and level:

```yaml
logger:
  level: INFO
  output:
    - stdout
```

### Server

Configure the server port and CORS policy:

```yaml
server:
  port: 8080
  cors:
    allow_origins:
      - "*"
    allow_methods:
      - GET
      - POST
      - PUT
      - PATCH
      - DELETE
      - HEAD
      - OPTIONS
    allow_headers:
      - Origin
      - Content-Length
      - Content-Type
    allow_credentials: false
    max_age: 12
```

### Forwarding Requests to Your Service

Start forwarding incoming requests to your internal services:

```yaml
services:
  - name: PetAPI
    path_prefix: /pet
    base_url: http://localhost:8082
    endpoints:
      - path: /dogs
        method: GET
```

With this configuration, the `GET http://localhost:8080/pet/dogs` request sent to the gateway will be forwarded to the `GET http://localhost:8082/dogs` endpoint of the service.

### Complete configuration

```yaml
logger:
  level: INFO
  output:
    - stdout

server:
  port: 8080
  cors:
    allow_origins:
      - "*"
    allow_methods:
      - GET
      - POST
      - PUT
      - PATCH
      - DELETE
      - HEAD
      - OPTIONS
    allow_headers:
      - Origin
      - Content-Length
      - Content-Type
    allow_credentials: false
    max_age: 12    

services:
  - name: PetAPI
    path_prefix: /pet
    base_url: http://localhost:8082
    endpoints:
      - path: /dogs
        method: GET
```
