como subir as conexões do mysql:
exemplo seleçãodepremios:

gcloud sql instances patch selecaodepremios-2026-04-db \
  --database-flags=max_connections=8000

