# upd2raw-docker-compose
A docker compose build for https://github.com/wangyu-/udp2raw tool.

# Requirements

* Install [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/install/);
* Start the docker engine and check that docker commands work (e.g. `docker ps`);
* (MacOS) Enable `Use kernel networking for UDP` (the [comment](https://github.com/haugene/docker-transmission-openvpn/issues/2723#issuecomment-2143498414))

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
