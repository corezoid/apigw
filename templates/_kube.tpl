{{- define "module.name" -}}
{{- default "apigw" .Values.global.apigw.module | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "module.apigw_frontend.name" -}}
{{ include "module.name" . }}-{{- default "apigw-frontend" .Values.global.apigw.apigw_frontend.name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "apigw.frontend.service.name" -}}
{{- include "module.apigw_frontend.name" . }}-service
{{- end -}}
