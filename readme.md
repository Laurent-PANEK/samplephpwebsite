# Sample PHP Website

[![Build Status](https://jenkins.laurentpanek.me/buildStatus/icon?job=samplephpwebsite%2Fv1&subject=v1%20build)](https://jenkins.laurentpanek.me/job/samplephpwebsite/job/v1/)
[![Build Status](https://jenkins.laurentpanek.me/buildStatus/icon?job=samplephpwebsite%2Fv2&subject=v2%20build)](https://jenkins.laurentpanek.me/job/samplephpwebsite/job/v2/)
[![Build Status](https://jenkins.laurentpanek.me/buildStatus/icon?job=samplephpwebsite%2Fv3&subject=v3%20build)](https://jenkins.laurentpanek.me/job/samplephpwebsite/job/v3/)

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

### Start all version

```bash
git checkout master

chmod +x start.sh

./start.sh
```

### Start one version

```bash
git checkout [v1|v2|v3]

chmod +x start.sh

./start.sh
```

### Run tests

> We assume that phpunit is present in PATH

```bash
git checkout [v1|v2|v3]

phpunit tests.php
```

## Author

[Laurent PANEK](https://github.com/Laurent-PANEK)
