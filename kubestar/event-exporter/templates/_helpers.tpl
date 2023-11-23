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



{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "prometheus-event-exporter.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

