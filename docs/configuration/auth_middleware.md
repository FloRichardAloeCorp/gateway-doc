# Authorization Middleware

The gateway comes with an authorization middleware that can perform the following tasks:

* Check JWT validity
* Check for authorized role(s)
* Check for required permission(s)

The middleware relies on an external OIDC provider (such as Keycloak). The setup of such a service is beyond the scope of this documentation.

## Reference

```yaml
# OIDC provider base URL
provider_url: <url>

# Client ID, checked as the `aud` (audience) of the token.
#
# To set a global client for all services, use the 
# `middlewares.auth.client_id` key. Otherwise, if you want a specific client 
# for each service, configure it in each service configuration.
client_id: <string>

# Optional authorized roles to be checked in the token data.
# The data is located at the `authorized_roles.token_key` location and is 
# checked against the `authorized_roles.values` array.
#
# Do not set to disable role checks. 
authorized_roles:

    # Location of the role(s) in the token. 
    # For nested keys, separate them with a ".".
    # Example: access.role
    token_key: <string>

    # Type of the token claim corresponding to the role(s). Possible values
    # are "string" or "[]string".
    claim_type: <string>

    # Accepted role values in the token. If none match, the request 
    # will be rejected.
    values:
    - <string>

# Optional required permissions to be checked in the token data.
# The data is located at the `required_permissions.token_key` location and is 
# checked against the `required_permissions.values` array.
#
# Do not set to disable permission checks. 
required_permissions:

    # Location of the permission(s) in the token. 
    # For nested keys, separate them with a ".".
    # Example: access.permission
    token_key: <string>

    # Type of the token claim corresponding to the permission(s). Possible values
    # are "string" or "[]string".
    claim_type: <string>

    # Accepted permission values in the token. If none match, the request 
    # will be rejected.
    values:
    - <string>
```
