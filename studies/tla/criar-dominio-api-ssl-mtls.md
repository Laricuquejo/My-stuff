# Como criar domínio api.promocaovocecampeao.com.br com HTTPS e mTLS

## 1. Criar arquivo de configuração HTTP do Apache

*(Na sua empresa os arquivos são criados direto em `sites-enabled` — não usar `sites-available` nem `a2ensite`.)*

1. **Criar arquivo de configuração HTTP em sites-enabled:**
   ```bash
   sudo nano /etc/apache2/sites-enabled/api.promocaovocecampeao.com.br.conf
   ```

2. **Adicionar configuração básica (seguindo padrão dos outros arquivos):**
   ```apache
   <VirtualHost *:80>
       ServerName api.promocaovocecampeao.com.br
       ServerAlias api.promocaovocecampeao.com.br
       
       DocumentRoot /var/www/html
       
       <Directory /var/www/html>
           Options Indexes FollowSymLinks
           AllowOverride All
           Require all granted
       </Directory>
       
       ErrorLog ${APACHE_LOG_DIR}/api.promocaovocecampeao.com.br_error.log
       CustomLog ${APACHE_LOG_DIR}/api.promocaovocecampeao.com.br_access.log combined
   </VirtualHost>
   ```
   Salvar e sair: `Ctrl+O`, Enter, `Ctrl+X`.

3. **Testar configuração e recarregar Apache:**
   ```bash
   sudo apache2ctl configtest
   sudo systemctl reload apache2
   ```

## 2. Configurar HTTPS com Certbot

1. **Executar certbot para obter certificado SSL:**
   ```bash
   sudo certbot --apache -d api.promocaovocecampeao.com.br
   ```

2. **Seguir as instruções do certbot:**
   - Escolher redirecionar HTTP para HTTPS quando perguntado
   - O certbot criará automaticamente o arquivo `api.promocaovocecampeao.com.br-le-ssl.conf`

3. **Verificar se o certificado foi criado:**
   ```bash
   ls -la /etc/apache2/sites-enabled/ | grep api.promocaovocecampeao.com.br
   ```
   Deve aparecer:
   - `api.promocaovocecampeao.com.br.conf`
   - `api.promocaovocecampeao.com.br-le-ssl.conf`

4. **Testar HTTPS:**
   ```bash
   curl -I https://api.promocaovocecampeao.com.br
   ```

## 3. Configurar mTLS (Mutual TLS)

1. **Editar o arquivo SSL gerado pelo certbot:**
   ```bash
   sudo nano /etc/apache2/sites-enabled/api.promocaovocecampeao.com.br-le-ssl.conf
   ```

2. **Adicionar as configurações de mTLS dentro do bloco `<VirtualHost *:443>`:**

   **Localizar a linha `<VirtualHost *:443>` e adicionar ANTES do fechamento `</VirtualHost>`:**

   ```apache
   <VirtualHost *:443>
       # ... configurações existentes do certbot ...
       
       # Configurações mTLS
       SSLVerifyClient require
       SSLVerifyDepth 3
       
       SSLCACertificateFile /etc/ssl/certs/itau-client-dev-ca-chain.pem
       
       SSLOptions +ExportCertData +StdEnvVars
       
       # ... resto das configurações ...
   </VirtualHost>
   ```

3. **Verificar se o arquivo de certificado CA existe:**
   ```bash
   ls -la /etc/ssl/certs/itau-client-dev-ca-chain.pem
   ```
   Se não existir, você precisará copiar/instalar o certificado CA do Itaú primeiro.

4. **Testar configuração do Apache:**
   ```bash
   sudo apache2ctl configtest
   ```

5. **Recarregar Apache:**
   ```bash
   sudo systemctl reload apache2
   ```

## 4. Verificação Final

1. **Verificar logs do Apache para erros:**
   ```bash
   sudo tail -f /var/log/apache2/error.log
   ```

2. **Testar acesso HTTPS com certificado cliente (mTLS):**
   ```bash
   curl --cert /caminho/para/certificado-cliente.pem \
        --key /caminho/para/chave-cliente.pem \
        --cacert /etc/ssl/certs/itau-client-dev-ca-chain.pem \
        https://api.promocaovocecampeao.com.br
   ```

## Resumo dos Passos:

1. ✅ Criar arquivo HTTP: `api.promocaovocecampeao.com.br.conf`
2. ✅ Habilitar site e recarregar Apache
3. ✅ Executar certbot: `sudo certbot --apache -d api.promocaovocecampeao.com.br`
4. ✅ Editar arquivo SSL: `api.promocaovocecampeao.com.br-le-ssl.conf`
5. ✅ Adicionar linhas mTLS dentro do `<VirtualHost *:443>`
6. ✅ Testar e recarregar Apache

## Notas Importantes:

- O arquivo SSL gerado pelo certbot fica em `/etc/apache2/sites-enabled/api.promocaovocecampeao.com.br-le-ssl.conf`
- As configurações mTLS devem estar dentro do bloco `<VirtualHost *:443>`
- Certifique-se de que o certificado CA do Itaú está no caminho correto: `/etc/ssl/certs/itau-client-dev-ca-chain.pem`
- Após configurar mTLS, apenas clientes com certificado válido do Itaú conseguirão acessar a API
