{{/*
Image url
*/}}
{{- define "apigw_migrations.imageUrl" -}}
{{ .Values.global.imageRegistry }}{{ if eq .Values.global.repotype "public" }}/public{{- end }}/apigw/apigw-migrations:{{ .Values.global.apigw.apigw_app.tag | default .Chart.AppVersion }}
{{- end }}
