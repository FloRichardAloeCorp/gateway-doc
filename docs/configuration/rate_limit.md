# Rate Limit

The gateway includes a rate limit middleware. The middleware uses an in-memory fixed time window algorithm.

## Reference

```yaml
# Specifies the basis on which the middleware should limit:
# - sub_claim: limit requests by each "sub" in the token (i.e., by user).
# - "": Globally limit requests.
#
limit_by: <string>

# Time duration in Go format indicating the reset time
# of the count.
window: <duration>

# Maximum number of requests allowed during the window.
max_count: <int>
```
