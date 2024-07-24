# Como criar Public bucket (CDN)

1. **Criar bucket público**
    - Adicionar a opção de multiregion
    - Public access prevention off

2. **Editar as permissões do bucket**
    - grant access to all users (screenshot 24 Jul 2024)
    - role: Storage Legacy Object Reader
    - Entrar no IAM para procurar pelo email exato do server (normalmente seria tipo sa-severname@redemagic1234.com)
    - Clicar no botão 'grant access' e escrever o usuario do server
    - Assign role: Storage Admin

3. **Avisar o cliente**
    - Entrar em objects, take a white screenshot than upload it
    - Bucket $PROMO_NAME criado;
    - O acesso admin foi garantido ao sa-$PROMO_NAME;
    - URL de exemplo: https://storage.googleapis.com/$PROMO_NAME/
