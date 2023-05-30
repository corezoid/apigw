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
{{- $global := .Values.global -}}
{{- $imageRegistry := coalesce $global.imageRegistry .Values.image.registry -}}
{{- $repotype := $global.repotype }}
{{- $imageRepo := .Values.image.repository -}}
{{- $imageTag := $global.apigw.apigw_frontend.tag | default $.Chart.AppVersion -}}
  {{- printf "%s/%s/%s:%s" .Values.global.imageRegistry $repotype $imageRepo $imageTag -}}
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
