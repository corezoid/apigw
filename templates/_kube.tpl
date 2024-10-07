{{- define "module.apigw.name" -}}
{{- default "apigw" .Values.global.apigw.module | trunc 63 | trimSuffix "-" }}
{{- end }}
