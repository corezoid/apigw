{{/*
Common labels
*/}}
{{- define "apigw.redis.labels" -}}
release: {{ .Release.Name }}
application: apigw-redis
role: master
{{- end }}

