{{/* Expand the name of the chart. */}}
{{- define "apigw.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "apigw.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Define postgres secret name */}}
{{- define "apigw.postgresSecretName" -}}
{{ .Release.Name }}-apigw-{{ .Values.global.db.secret.name }}
{{- end }}

{{- define "apigw.postgresSecretAnnotations" -}}
{{ if .Values.global.apigw.secret.postgres.annotations -}}
{{ toYaml .Values.global.apigw.secret.postgres.annotations }}
{{ end -}}
{{- end }}

{{/* Define redis secret name */}}
{{- define "apigw.redisSecretName" -}}
{{ .Release.Name }}-apigw-{{ .Values.global.redis.secret.name }}-secret
{{- end }}

{{- define "common.ServiceMonitor.apiVersion" -}}
monitoring.coreos.com/v1
{{- end -}}

{{- define "common.ServiceMonitor.metadata.labes" -}}
simulator.observability/scrape: "true"
{{- end -}}