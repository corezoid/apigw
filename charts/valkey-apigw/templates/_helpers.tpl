{{/*
Common labels
*/}}
{{- define "apigw.valkey.labels" -}}
release: {{ .Release.Name }}
application: apigw-valkey
role: master
{{- end }}

