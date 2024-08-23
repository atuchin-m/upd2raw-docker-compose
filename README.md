# upd2raw-docker-compose
A docker compose build for https://github.com/wangyu-/udp2raw tool.

# How to use

* Update `.env` file to match your config (see server mode or client mode sections);
* (optional) Add `-k`, `--cipher-mode`, `--auth-mode` to `EXTRA_ARGS` ([doc](https://github.com/wangyu-/udp2raw?tab=readme-ov-file#usage));
* `docker compose up` (add `-d` to launch in background).

# Server mode

In `.env` file:
* set `REMOTE_HOST=host:port` for your target server;
* `EXTRA_ARGS` should start with `-s` (instead `-c`): `EXTRA_ARGS = "-s ..."`.

# Client mode

In `.env` file:
* set `REMOTE_HOST=host:port` to your udp2raw server. The default port is `51840`;
* `EXTRA_ARGS` should start with `-c` (instead `-c`): `EXTRA_ARGS = "-c ..."`.

# Updating udp2raw

* adjust `ARG TAG=` in `Dockerfile`;
* rebuild the image.
