{{- define "app.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "app.labels" -}}
app.kubernetes.io/name: {{ .Values.name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Values.app.version | quote }}
helm.sh/chart: {{ include "app.chart" . }}
tier: {{ .Values.network.tier }}
{{- end -}}
