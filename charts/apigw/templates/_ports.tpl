{{/*
Define ApiGW application ports
*/}}

{{/*
Define ApiGW callback_server port
*/}}
{{- define "apigw.apigw_app.port.callback_server.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.callback_server.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.callback_server.listen_port }}
{{- else }}
{{- printf "%s" 8070 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.callback_server.Name" -}}
callback
{{- end }}

{{- define "apigw.apigw_app.port.callback_server.Protocol" -}}
TCP
{{- end }}


{{/*
Define ApiGW api_server port
*/}}
{{- define "apigw.apigw_app.port.api_server.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.api_server.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.api_server.listen_port }}
{{- else }}
{{- printf "%s" 8080 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.api_server.Name" -}}
apiserver
{{- end }}

{{- define "apigw.apigw_app.port.api_server.Protocol" -}}
TCP
{{- end }}

{{/*
Define ApiGW proxy_server port
*/}}
{{- define "apigw.apigw_app.port.proxy_server.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.proxy_server.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.proxy_server.listen_port }}
{{- else }}
{{- printf "%s" 8090 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.proxy_server.Name" -}}
proxyserver
{{- end }}

{{- define "apigw.apigw_app.port.proxy_server.Protocol" -}}
TCP
{{- end }}

{{/*
Define ApiGW health_server port
*/}}
{{- define "apigw.apigw_app.port.health_server.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.health_server.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.health_server.listen_port }}
{{- else }}
{{- printf "%s" 8060 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.health_server.Name" -}}
healthserver
{{- end }}

{{- define "apigw.apigw_app.port.health_server.Protocol" -}}
TCP
{{- end }}


{{/*
Define ApiGW sync_api_server port
*/}}
{{- define "apigw.apigw_app.port.sync_api_server.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.sync_api_server.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.sync_api_server.listen_port }}
{{- else }}
{{- printf "%s" 8081 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.sync_api_server.Name" -}}
syncapiserver
{{- end }}

{{- define "apigw.apigw_app.port.sync_api_server.Protocol" -}}
TCP
{{- end }}

{{/*
Define ApiGW metrics port
*/}}
{{- define "apigw.apigw_app.port.metrics.Number" -}}
{{- if .Values.global.apigw.apigw_app.config.metrics.listen_port -}}
{{ .Values.global.apigw.apigw_app.config.metrics.listen_port }}
{{- else }}
{{- printf "%s" 8050 }}
{{- end -}}
{{- end }}

{{- define "apigw.apigw_app.port.metrics.Name" -}}
metrics
{{- end }}

{{- define "apigw.apigw_app.port.metrics.Protocol" -}}
TCP
{{- end }}
