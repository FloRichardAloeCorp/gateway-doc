# Gateway documentation

This project is an API Gateway built in Go, designed to provide a highly configurable and flexible system for managing multiple backend services.

The gateway configuration is handled through a `config.yaml` file, allowing users to easily customize aspects such as logging, server settings, and global or service-specific middleware.

Key features include support for authorization using JWTs, rate limiting, CORS configuration, and detailed control over individual services and their endpoints.

The gateway integrates seamlessly with external OIDC providers for authentication, ensuring robust security and scalability across microservices.
