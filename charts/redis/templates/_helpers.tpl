{{/*
Common labels
*/}}
{{- define "redis.labels" -}}
release: {{ .Release.Name }}
application: {{ .Values.appName }}
role: master
{{- end }}

