{{/* Expand the name of the chart. */}}
{{- define "apigw.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "apigw.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Selector labels */}}
{{- define "apigw.selectorLabels" -}}
app.kubernetes.io/name: {{ include "apigw.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/* Common labels */}}
{{- define "apigw.labels" -}}
helm.sh/chart: {{ include "apigw.chart" . }}
{{ include "apigw.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end }}

{{/* Define postgres secret name */}}
{{- define "postgres.secretName" -}}
{{ .Release.Name }}-apigw-{{ .Values.global.db.secret.name }}
{{- end }}

{{- define "apigw.postgresSecretAnnotations" -}}
{{ if .Values.global.apigw.secret.postgres.annotations -}}
{{ toYaml .Values.global.apigw.secret.postgres.annotations }}
{{ end -}}
{{- end }}

{{/* Define redis secret name */}}
{{- define "apigw.redis.secretName" -}}
{{ .Release.Name }}-apigw-{{ .Values.global.redis.secret.name }}-secret
{{- end }}

{{- define "common.ServiceMonitor.apiVersion" -}}
monitoring.coreos.com/v1
{{- end -}}

{{- define "common.ServiceMonitor.metadata.labes" -}}
simulator.observability/scrape: "true"
{{- end -}}