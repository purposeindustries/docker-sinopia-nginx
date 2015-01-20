# docker-sinopia-nginx

Simple `nginx` container in front of `sinopia` to server as ssl-reverse-proxy.

## Usage

If the container [`purpose/sinopia`](https://registry.hub.docker.com/u/purpose/sinopia/) is running as `sinopia`:

```sh
$ docker run -d \
  --link sinopia:sinopia \
  -p 443:443 \
  --name sinopia-nginx \
  purpose/sinopia-nginx
```

It generates a self-signed ssl cert, defines upstream for `sinopia` and launches nginx.

## License

MIT
