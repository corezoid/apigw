# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Chart 2.3.8 [ApiGW 1.10.1] - 2024.10.07
### Helm changes
- Applications versions:
    - apigw - 1.10.1
    - redis - 0.1.7
    - valkey - 0.1.7
- Updatr deps
- Update golang up to 1.23
- Fix tunnel connections
- Fix path spaces
- Logs info


## Chart 2.3.7 [ApiGW 1.9.4] - 2024.10.07
### Helm changes
- Applications versions:
    - apigw - 1.9.4
    - redis - 0.1.7
    - valkey - 0.1.7
- Update `annotations` for `ingress` in `values.yaml` file
- Updatr deps
- Update golang up to 1.23
- Fix tunnel connections
- Fix path spaces
- Logs info



## Chart 2.3.6 [ApiGW 1.9.3] - 2024-07-08
### Helm changes
- Applications versions:
    - apigw - 1.9.3
    - redis - 0.1.7
    - valkey - 0.1.7
- Switch to `hub.corezoid.com/hub.docker.com/library/` proxy


## Chart 2.3.5 [ApiGW 1.9.3] - 2024-07-08
### Helm changes
- Applications versions:
    - apigw - 1.9.3
    - redis - 0.1.6
    - valkey - 0.1.7


## Chart 2.3.4 [ApiGW 1.9.2] - 2024-06-26
### Helm changes
- Applications versions:
    - apigw - 1.9.2
    - redis - 0.1.6
    - valkey - 0.1.7
- Remove hardcode `resources` from `values.yaml` file
- Set `use_deprecated_task_format` to `false` for default


## Chart 2.3.3 [ApiGW 1.9.2] - 2024-06-20
### Helm changes
- Applications versions:
    - apigw - 1.9.2
    - redis - 0.1.6
    - valkey - 0.1.7
- Changes for imagePullSecrets creation
```
      {{- if .Values.global.imagePullSecrets }}
      imagePullSecrets:
      {{- range $pullSecret := .Values.global.imagePullSecrets }}
        - name: {{ $pullSecret }}
      {{- end }}
      {{- end }}
```


## Chart 2.3.2 [ApiGW 1.9.2] - 2024-06-17
### Helm changes
- Applications versions:
    - apigw - 1.9.2
    - redis - 0.1.6
    - valkey - 0.1.7
- Switch to `docker-hub.middleware.biz/simulator/alpine:3.20` for `initContainers`
- Switch to `alpine` version for `redis` and `valkey` images
- Update `valkey` registry with full url docker.io (See: https://www.redhat.com/sysadmin/container-image-short-names)


## Chart 2.3.1 [ApiGW 1.9.2] - 2024-06-14
### Helm changes
- Applications versions:
    - apigw - 1.9.2
    - redis - 0.1.5
    - valkey - 0.1.5
- Add `initContainers` in `apigw-deployment` to redis host resolve
- Add `initContainers` in `apigw-deployment` to check redis host and port availability
- Add `initContainers` in `apigw-deployment` to database host resolve
- Add `initContainers` in `apigw-deployment` to check database host and port availability
- Update `valkey` sub-chart 


## Chart 2.3.0 [ApiGW 1.9.2] - 2024-06-11
### Helm changes
- Applications versions:
    - apigw - 1.9.2
    - redis - 0.1.4
    - valkey - 0.1.4
- Add valkey subchart. You can use valkey instead of redis. Need to set block in values file
```
valkey:
  use: true
  internal: true
  secret:
    name: "valkey"
    create: true
    data:
      host: "apigw-valkey-service"
      port: "6379"
      password: "PassWord"
```

### Features
- Alertmanager alerts and Grafana dashboards [[DE-964](https://jira.corezoid.com/browse/DE-964)]


## Chart 2.2.5 [ApiGW 1.8.1] - 2024-04-01
### Helm changes
- Applications versions:
    - apigw - 1.8.1
    - redis - 0.1.3
- Helm chart refactoring
- Rename `redis` to `redis-apigw`. Need to change `global.apigw.redis.secret.data.host` to `apigw-redis-service`!


## Chart 2.2.4 [ApiGW 1.8.1] - 2024-02-28
### Helm changes
- Applications versions:
    - apigw - 1.8.1
    - redis - 1.0.1
- Helm chart refactoring


## Chart 2.2.3 [ApiGW 1.7.2] - 2023-12-15
### Helm changes
- Applications versions:
    - apigw - 1.7.2
    - redis - 1.0.1
- Remove apigw-frotend. Frontend part moved to Simulator UI.
- Remove `proxy_server.corezoid.admin_login` and `proxy_server.corezoid.admin_secret`
- Added `db_settings` block for connect into corezoid setyings database.
- Subcharts refactoring


## Chart 2.2.0 [ApiGW 1.7.1] - 2023-10-20
### Helm changes
- Applications versions:
    - apigw - 1.6.1
    - apigw-frontend - 1.0.3
    - redis - 1.0.1
- Subcharts refactoring
- In this version, the `selector.matchLabels` for the application's Deployment is changing, so before updating, you need to delete the current Deployment - `kubectl delete deployment apigw-apigw-app`, and then proceed with updating the Helm chart.

### Improvements
Added TLS support for working with Postgres/Redis.
Added support for project export/import (available in corezoid 6.4.1 and later).
Updated all project dependencies.


## Chart 2.1.1 [ApiGW 1.6.1] - 2023-08-23
### Helm changes
- Applications versions:
    - apigw - 1.6.1
    - apigw-frontend - 1.0.3
    - redis - 1.0.1
- Move `affinity` in main values.yaml file
- Update deploymant for apigw application - add ports descriptions
- Change `imagePullPolicy` for redis image to `IfNotPresent`
- Switch to public redis image.


## Chart 2.1.0 [ApiGW 1.5.0] - 2023-07-05
### Helm changes
- Applications versions:
    - apigw - 1.5.0
    - apigw-frontend - 1.0.3
    - redis - 1.0.1
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
