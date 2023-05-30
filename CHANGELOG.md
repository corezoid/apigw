# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.5] - 2023-05-08

### Helm changes

- Remove `apigwAnnotation` from `_helpers.tpl` file
- Migrate `annotation` for ingress into `values.yaml` file

## [2.0.4] - 2023-04-06

### Helm changes

- Add `ServiceMonitor` for `apigw`. To enable ServiceMonitor set `.Values.global.serviceMonitor.enabled: true`


## [2.0.3] - 2023-03-21

### Helm changes

- New Chart version


## [2.0.0] - 2023-02-11

### Major changes

- New Chart version
- Remove hosts hardcode
- Remove unusing values
