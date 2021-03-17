{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app.labels" -}}
app.kubernetes.io/name: {{ .Values.name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.app.version | quote }}
app.kubernetes.io/env: {{ .Values.env | default "local"}}
helm.sh/chart: {{ include "app.chart" . }}
tier: {{ .Values.network.tier }}
{{- end -}}


{{- define "app.name" -}}
{{ .Values.name }}
{{- end -}}

{{- define "app.name.deployment" -}}
{{ template "app.name" . }}-deployment-{{ .Values.env | default "local"}}
{{- end -}}

{{- define "app.name.ingress" -}}
{{ template "app.name" . }}-ingress-{{ .Values.env | default "local"}}
{{- end -}}

{{- define "app.name.service" -}}
{{ template "app.name" . }}-service-{{ .Values.env | default "local"}}
{{- end -}}
