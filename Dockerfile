FROM python:3.9 as builder
RUN pip install mkdocs-material

WORKDIR /app
COPY . .

RUN mkdocs build 

FROM caddy:alpine
WORKDIR /usr/share/caddy/
COPY --chown=1000:1000 --from=builder /app/site .
USER 1000:1000
CMD ["caddy","file-server"]