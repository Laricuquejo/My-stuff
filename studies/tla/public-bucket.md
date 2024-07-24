# Como criar Public bucket (CDN)

1. **Criar bucket público**
    - Adicionar a opção de multiregion
    - Public access prevention off

2. **Editar as permissões do bucket**
    - Entrar no IAM para procurar pelo email exato do server (normalmente seria tipo sa-severname@redemagic1234.com)
    - Clicar no botão 'grant access' e escrever o email do server
    - Assign role: Storage Admin

3. **Avisar o cliente**
    - Bucket $PROMO_NAME criado;
    - O acesso admin foi garantido ao sa-$PROMO_NAME;
    - URL de exemplo: https://storage.googleapis.com/$PROMO_NAME/
