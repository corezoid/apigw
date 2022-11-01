{{/*
Common labels
*/}}
{{- define "frontend.labels" -}}
tier: {{ .Values.appName }}
release: {{ .Release.Name }}
{{- end }}