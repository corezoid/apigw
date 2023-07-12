{{/*
Common labels
*/}}
{{- define "redis.labels" -}}
tier: {{ .Values.appName }}
release: {{ .Release.Name }}
{{- end }}

