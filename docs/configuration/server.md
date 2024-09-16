# Server

Configures the gateway server.

## Reference

```yaml
# Gateway server configuration.
server:

  # The port where the server will run.
  port: 8080

  # CORS configuration for the server. This configuration will be
  # applied to all services.
  cors:

    # Allowed origins for the server. Set this to your known requesting origins.
    # Use "*" to allow all origins.
    allow_origins:
      - <string>

    # HTTP methods allowed by the server.
    allow_methods:
      - <string>

    # Headers allowed by the server.
    allow_headers:
      - <string>

    # Headers that are safe to expose to the client.
    expose_headers:
      - <string>

    # Indicates whether the request can include user credentials like
    # cookies, HTTP authentication, or client-side SSL certificates.
    allow_credentials: <boolean>

    # Duration in hours for caching preflight requests.
    max_age: <int>
```
