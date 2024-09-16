# Services

Manages the configuration for each service.

## Reference

```yaml
# Manages the configuration for each service.
#
# Note that this is an array of configurations.
services:
  # Name of your service. Used in logs for better debugging 
  # and error handling.
  - name: <string>

    # Path prefix of the service in the gateway. Your service
    # will be accessible with this path prefix.
    #
    # Adding a slash is mandatory.
    path_prefix: /<string>

    # Base URL of your service without trailing slash.
    base_url: <url>

    # Service middleware configuration. This configuration will
    # be applied to all endpoints but can be overridden.
    middlewares:

      # Auth middleware configuration.
      auth:

        # Toggle auth middleware for the service.
        enabled: <boolean>

        # Auth middleware configuration fields. See https://gateway-doc.onrender.com/configuration/auth_middleware/.
        # 
        # All unset fields will be overridden by the 
        # global auth configuration middleware.
        #
        [auth_config]

      # Maximum size of incoming request body in bytes. 
      # This value can be overridden by endpoint configuration.
      # Set to 0 to disable request body size check.
      max_body_size: <int>

      # Maximum size of incoming request headers in bytes. 
      # This value can be overridden by endpoint configuration.
      # Set to 0 to disable request header size check.
      max_header_size: <int>

      # Rate limiting configuration.
      rate_limit:

        # Toggle rate limiting middleware.
        enabled: <boolean>

        # Rate limit middleware configuration. See https://gateway-doc.onrender.com/configuration/rate_limit/.
        [rate_limit_config]

    # Service endpoint configuration.
    endpoints:

      # Path of the endpoint WITHOUT the path prefix.
      # Path has to be declared like Gin framework.
      - path: <path>

        # HTTP method of the endpoint.
        method: <string>

        # Optional specific auth middleware configuration for the endpoint. 
        # Set it only if you want to override `service.middlewares.auth` values.
        auth:
          
          # Toggle auth middleware for this endpoint.
          enabled: <boolean>

          # List of accepted roles in the JWT. See https://gateway-doc.onrender.com/configuration/auth_middleware/.
          authorized_roles:
            - <string>

          # List of required permissions in the JWT. See https://gateway-doc.onrender.com/configuration/auth_middleware/.
          required_permissions:
            - <string>

        # Optional specific rate limit middleware configuration for the endpoint.
        # Set it only if you want to override `service.middlewares.rate_limit` values.
        rate_limit:
          # Toggle rate limit middleware for this endpoint.
          enabled: <boolean>

          # Rate limit middleware configuration. See https://gateway-doc.onrender.com/configuration/rate_limit/.
          [rate_limit_config]

        # Specific maximum size of incoming request body in bytes. 
        # Set it only if you want to override `service.middlewares.max_body_size`.
        max_body_size: <int>

        # Specific maximum size of incoming request headers in bytes. 
        # Set it only if you want to override `service.middlewares.max_header_size`.
        max_header_size: <int>
```
