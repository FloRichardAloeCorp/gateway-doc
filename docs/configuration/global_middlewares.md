# Global Middlewares

Holds global middleware configurations that can be shared between services. It is used to avoid configuration repetition and can be overridden by specific configurations.

NOTE: Not all middlewares can be declared as global.

## Reference

```yaml
# Optionnal global middleware configuration, holds configurations shareable 
# by services.
# Leave it empty if you don't need it.
middlewares:

  # Auth middleware configuration.
  # See https://gateway-doc.onrender.com/configuration/auth_middleware/ to learn more about auth middleware.
  auth:
  
    # Auth middleware configuration fields. See https://gateway-doc.onrender.com/configuration/auth_middleware/.
    [auth_config]
```
