{{/*
Common labels
*/}}
{{- define "apigw-frontend.labels" -}}
tier: {{ .Values.appName }}
release: {{ .Release.Name }}
{{- end }}

{{/*
Image url
*/}}
{{- define "apigw_frontend.imageUrl" -}}
{{ .Values.global.imageRegistry }}{{ if eq .Values.global.repotype "public" }}/public{{- else }}/{{ .Values.global.repotype }}{{- end }}/apigw-apigw-frontend:{{ .Values.global.apigw.apigw_frontend.tag | default .Chart.AppVersion }}
{{- end }}

{{/*
Image pull policy
*/}}
{{- define "apigw_frontend.imagePullPolicy" -}}
{{- $imagePullPolicy := coalesce .Values.global.apigw.apigw_frontend.imagePullPolicy .Values.global.imagePullPolicy -}}
  {{- default $imagePullPolicy "IfNotPresent" -}}
{{- end }}

{{- define "apigw_frontend.appPort" -}}
{{- $global := .Values.global -}}
{{- $appPort := coalesce $global.apigw.apigw_frontend.port .Values.appPort -}}
  {{- $appPort -}}
{{- end }}
