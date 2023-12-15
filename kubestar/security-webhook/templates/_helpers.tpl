{{/*
Define the image repository and tag for node-exporter.
*/}}
{{- define "common.image" -}}
{{- printf "%s:%s" .Values.image.repository .Values.image.tag -}}
{{- end -}}

{{/*
Create common annotations
*/}}
{{- define "common.annotations" -}}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
meta.helm.sh/release-name: {{ .Release.Name }}
meta.helm.sh/release-namespace: {{ .Release.Namespace }}
meta.helm.sh/release-version: "{{ .Release.Version }}"
app.kubernetes.io/managed-by: Helm
{{- if .Values.annotations }}
{{- toYaml .Values.annotations | nindent 4 }}
{{- end }}
{{- end -}}


