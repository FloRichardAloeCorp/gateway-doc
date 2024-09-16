# Logger

Configures the logger for the gateway.

## Reference

```yaml
# Logger server configuration. You can set the log level and output destination.
logger:

  # One of DEBUG, INFO, WARN, or ERROR
  level: <string>

  # List of possible outputs. Use stdout for basic configuration. 
  # The output can be a file path or a URL with the `file://` scheme.
  output:
    - <string>
```
