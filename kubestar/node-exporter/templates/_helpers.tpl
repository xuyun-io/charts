{{/*
Define the image repository and tag for node-exporter.
*/}}
{{- define "common.image" -}}
{{- printf "%s:%s" .Values.image.repository .Values.image.tag -}}
{{- end -}}

