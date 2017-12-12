# factom-docker

A Factom sandbox docker container

## Usage

The easiest way to get started is to use docker-compose. Here's an example
`docker-compose.yml`:

```yml
version: '3'

services:
  factom-sandbox:
    image: bhomnick/factom
    ports:
      - "8088:8088"
      - "8089:8089"
      - "8090:8090"
    volumes:
      - factomdata:/root/.factom/

volumes:
  factomdata:
```

If you're on Docker for Mac or another VM you may need to add a localhost entry under the `factom-sandbox` service for whatever your local gateway IP is. For Mac this is:

```yml
extra_hosts:
  - localhost:172.17.0.1
```

Then use `docker-compose up` to start factomd and factom-walletd.

You can also access the CLI by running:

```
$ docker-compose run factom-sandbox bash
root@0cba5194ec5f:/# factom-cli help
```
