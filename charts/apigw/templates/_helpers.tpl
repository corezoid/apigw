{{/*
Common labels
*/}}
{{- define "apigw.labels" -}}
release: {{ .Release.Name | quote }}
application: {{ .Values.appName | quote }}
{{- end }}

{{/*
Image url
*/}}
{{- define "apigw_app.imageUrl" -}}
{{ .Values.global.imageRegistry }}{{ if eq .Values.global.repotype "public" }}/public{{- else }}/{{ .Values.global.repotype }}{{- end }}/apigw-apigw:{{ .Values.global.apigw.apigw_app.tag | default .Chart.AppVersion }}
{{- end }}

{{- define "module.apigw_app.name" -}}
{{ include "module.apigw.name" . }}-{{- default "apigw-app" .Values.global.apigw.apigw_app.name | trunc 63 | trimSuffix "-" }}
{{- end -}}

{{- define "apigw.apigw_app.service.name" -}}
{{- include "module.apigw_app.name" . }}-service
{{- end -}}

{{- define "apigw.apigw_app.configmap.name" -}}
{{- include "module.apigw_app.name" . }}-configmap
{{- end -}}

{{- define "apigw.apigw_app.deployment.name" -}}
{{- include "module.apigw_app.name" . }}-deployment
{{- end -}}

{{- define "apigw.apigw_app.role.name" -}}
{{- include "module.apigw_app.name" . }}-role
{{- end -}}

{{- define "apigw.apigw_app.roleBinding.name" -}}
{{- include "module.apigw_app.name" . }}-roleBinding
{{- end -}}

{{- define "apigw.apigw_app.serviceaccount.name" -}}
{{- include "module.apigw_app.name" . }}-serviceaccount
{{- end -}}


{{- define "apigw.apigw_app.cpuHpa.name" -}}
{{- include "module.apigw_app.name" . }}-cpu-autoscale
{{- end -}}

{{- define "apigw_app.imagePullPolicy" -}}
{{- if .Values.global.apigw.apigw_app.imagePullPolicy -}}
{{ .Values.global.apigw.apigw_app.imagePullPolicy }}
{{- else -}}
{{ .Values.global.imagePullPolicy }}
{{- end -}}
{{- end }}
