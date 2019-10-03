# Sample PHP Website

[![Build Status](https://jenkins.laurentpanek.me/buildStatus/icon?job=samplephpwebsite%2Fv2)](https://jenkins.laurentpanek.me/job/samplephpwebsite/job/v2/)

## Informations

> Job build history and demo website has been archived and removed plublicy

- [Dockerhub](https://hub.docker.com/r/laurentpanek/samplephpwebsite)

## Requirements

| Requirement    | Version |
| -------------- | ------- |
| Docker         | >=18    |
| docker-compose | >=1.10  |
| PHP            | >= 7    |
| PHPUnit        | >= 6    |

## Usage

### Run tests

> We assume that phpunit is present in PATH

```bash
phpunit tests.php
```

### Start application

```bash
chmod +x start.sh
./start.sh
```

## Author

[Laurent PANEK](https://github.com/Laurent-PANEK)
