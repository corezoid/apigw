{{- if .global.postgresql_credentials }}
{{- if .global.postgresql_credentials.apigw }}
- name: APIGW_POSTGRESQL_HOST
  value: {{ .global.postgresql_credentials.apigw.host | quote }}
- name: APIGW_POSTGRESQL_PORT
  value: {{ .global.postgresql_credentials.apigw.port | quote }}
- name: APIGW_POSTGRESQL_USERNAME
  value: {{ .global.postgresql_credentials.apigw.username | quote }}
- name: APIGW_POSTGRESQL_PASSWORD
  value: {{ .global.postgresql_credentials.apigw.password | quote }}
{{- else if .global.postgresql_credentials.main }}
- name: APIGW_POSTGRESQL_HOST
  value: {{ .global.postgresql_credentials.main.host | quote }}
- name: APIGW_POSTGRESQL_PORT
  value: {{ .global.postgresql_credentials.main.port | quote }}
- name: APIGW_POSTGRESQL_USERNAME
  value: {{ .global.postgresql_credentials.main.username | quote }}
- name: APIGW_POSTGRESQL_PASSWORD
  value: {{ .global.postgresql_credentials.main.password | quote }}
{{- end }}
{{- end }}
