# 1. Login com a nova conta
gcloud auth login username@gmail.com

# 2. Verificar contas autenticadas
gcloud auth list

# 3. Definir a nova conta como ativa
gcloud config set account username@gmail.com

# 4. (Opcional) Remover a conta antiga
gcloud auth revoke conta.antiga@gmail.com

# 5. (Opcional) Trocar o projeto
    - gcloud projects list
    - gcloud config set project <PROJECT_ID>

# 5. (Opcional) Criar um novo projeto
    - gcloud projects create <NEW_PROJECT_ID> --name="<NEW_PROJECT_NAME>"
    - gcloud config set project <NEW_PROJECT_ID>
