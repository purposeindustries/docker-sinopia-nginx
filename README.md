# docker-sinopia-nginx

Simple `nginx` container in front of `sinopia` to server as ssl-reverse-proxy.

## Usage

If the container [`purpose/sinopia`](https://registry.hub.docker.com/u/purpose/sinopia/) is running as `sinopia`, and [`purpose/sinopia-container`](https://registry.hub.docker.com/u/purpose/sinopia-container) is running as `sinopia-container`:

```sh
$ docker run -d \
  --link sinopia:sinopia \
  --volumes-from sinopia-container \
  -p 443:443 \
  --name sinopia-nginx \
  purpose/sinopia-nginx
```

It defines upstream for `sinopia` and launches nginx.

## License

MIT
