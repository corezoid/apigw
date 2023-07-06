# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Chart 2.1.0 [ApiGW 1.5.0] - 2023-07-05
### Helm changes
- New applications versions:
    apigw - 1.5.0
    apigw-frontend - 1.0.3
    redis - 1.0.1
- Removed `apigw-migration` subchart
- Add internal `redis` for application logic
- Add annotation for postgres secrets
```
global:
  apigw:
    secret:
      postgres:
        annotations: {}
```
- Add values for SyncAPI sub-domain: `sync_subDomain`
- Add params for internal `redis`
```
global:
  redis:
    internal: true
    secret:
      name: "redis"
      create: true
      data:
        host: "apigw-redis"
        port: "6379"
        password: "REDIS_PASSWORD"
```


## Chart 2.0.6 [ApiGW 1.4.3] - 2023-06-21
### Helm changes
- Rename `postgres-secret`


## Chart 2.0.5 [ApiGW 1.4.3] - 2023-05-08
### Helm changes
- Remove `apigwAnnotation` from `_helpers.tpl` file
- Migrate `annotation` for ingress into `values.yaml` file


## Chart 2.0.4 [ApiGW 1.4.3] - 2023-04-06
### Helm changes
- Add `ServiceMonitor` for `apigw`. To enable ServiceMonitor set `.Values.global.serviceMonitor.enabled: true`


## Chart 2.0.3 [ApiGW 1.4.3] - 2023-03-21
### Helm changes
- New Chart version


## Chart 2.0.0 [ApiGW 1.4.3] - 2023-02-11
### Helm changes
- New Chart version
- Remove hosts hardcode
- Remove unusing values
