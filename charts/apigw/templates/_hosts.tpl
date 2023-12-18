{{/*
Define ApiGW hosts
*/}}
{{- define "apigw.hosts.callback_server" -}}
{{ .Values.global.apigw.apigw_app.callback_server_subDomain }}.{{ .Values.global.domain }}
{{- end -}}

{{- define "apigw.hosts.proxy_server" -}}
{{ .Values.global.apigw.apigw_app.proxy_server_subDomain }}.{{ .Values.global.domain }}
{{- end -}}

{{- define "apigw.hosts.api_server" -}}
{{ .Values.global.apigw.apigw_app.api_server_subDomain }}.{{ .Values.global.domain }}
{{- end -}}

{{- define "apigw.hosts.sync" -}}
{{ .Values.global.apigw.apigw_app.sync_subDomain }}.{{ .Values.global.domain }}
{{- end -}}

{{- define "apigw.hosts.sa" -}}
{{ .Values.global.sa.subDomain }}.{{ .Values.global.domain }}
{{- end -}}

{{- define "apigw.hosts.corezoid" -}}
{{- if eq .Values.global.subdomain "" -}}
{{ .Values.global.domain }}
{{- else -}}
{{ .Values.global.subdomain }}.{{ .Values.global.domain }}
{{- end -}}
{{- end -}}
