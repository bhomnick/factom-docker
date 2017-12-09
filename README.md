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

Then use `docker-compose up` to start factomd and factom-walletd.

You can also access the CLI by running `docker-compose run factom-sandbox factom-cli`.
