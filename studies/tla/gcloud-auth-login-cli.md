# 1. Login com a nova conta
gcloud auth login username@gmail.com

# 2. Verificar contas autenticadas
gcloud auth list

# 3. Definir a nova conta como ativa
gcloud config set account username@gmail.com

# 4. (Opcional) Remover a conta antiga
gcloud auth revoke conta.antiga@gmail.com