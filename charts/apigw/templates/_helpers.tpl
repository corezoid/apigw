{{/*
Common labels
*/}}
{{- define "apigw.labels" -}}
release: {{ .Release.Name | quote }}
app: {{ .Values.appName | quote }}
tier: {{ .Values.appName| quote }}
{{- end }}

{{/*
Image url
*/}}
{{- define "apigw_app.imageUrl" -}}
{{ .Values.global.imageRegistry }}{{ if eq .Values.global.repotype "public" }}/public/apigw{{- else }}/{{ .Values.global.repotype }}{{- end }}/apigw-apigw:{{ .Values.global.apigw.apigw_app.tag | default .Chart.AppVersion }}
{{- end }}

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

{{- define "apigw.hosts.frontend" -}}
{{ .Values.global.apigw.apigw_app.frontend_subDomain }}.{{ .Values.global.domain }}
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

{{- define "apigw_app.imagePullPolicy" -}}
{{- if .Values.global.apigw.apigw_app.imagePullPolicy -}}
{{ .Values.global.apigw.apigw_app.imagePullPolicy }}
{{- else -}}
{{ .Values.global.imagePullPolicy }}
{{- end -}}
{{- end }}