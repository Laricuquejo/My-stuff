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
   certbot --apache -d  promocaoseulugarnafinal.com.br -d www.promocaoseulugarnafinal.com.br
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



historico real como exemplo:
root@itau-copa-2026-03-matriz:/home/laricuquejo# cd etc
bash: cd: etc: No such file or directory
root@itau-copa-2026-03-matriz:/home/laricuquejo# cd /etc
root@itau-copa-2026-03-matriz:/etc# ls
ImageMagick-6		ca-certificates.conf  email-addresses	      gss	       ldap	       modprobe.d	    nvme	python3.11	security	   sudoers.d
NetworkManager		cloud		      environment	      host.conf        letsencrypt     modsecurity	    opt		rc0.d		selinux		   sv
X11			cron.d		      ethertypes	      hostname	       libaudit.conf   modules		    os-release	rc1.d		services	   sysctl.conf
adduser.conf		cron.daily	      exim4		      hosts	       libnl-3	       modules-load.d	    pam.conf	rc2.d		sgml		   sysctl.d
aliases			cron.hourly	      fluent-bit	      hosts.allow      libpaper.d      motd		    pam.d	rc3.d		shadow		   systemd
alternatives		cron.monthly	      fonts		      hosts.deny       localtime       mtab		    papersize	rc4.d		shadow-		   terminfo
apache2			cron.weekly	      fstab		      init.d	       logcheck        mysql		    passwd	rc5.d		shells		   timezone
apparmor		cron.yearly	      gai.conf		      initramfs-tools  login.defs      nanorc		    passwd-	rc6.d		skel		   tmpfiles.d
apparmor.d		crontab		      ghostscript	      inputrc	       logrotate.conf  netconfig	    perl	rcS.d		ssh		   ucf.conf
apt			dbus-1		      google-cloud-ops-agent  iproute2	       logrotate.d     netplan		    php		reportbug.conf	ssl		   udev
bash.bashrc		debconf.conf	      google_instance_id      issue	       machine-id      network		    pm		resolv.conf	subgid		   ufw
bash_completion		debian_version	      groff		      issue.net        magic	       networkd-dispatcher  polkit-1	rmt		subgid-		   update-motd.d
bash_completion.d	default		      group		      kernel	       magic.mime      networks		    ppp		rpc		subuid		   vim
bindresvport.blacklist	deluser.conf	      group-		      kernel-img.conf  mail.rc	       newrelic		    profile	rsyslog.conf	subuid-		   wgetrc
binfmt.d		dhcp		      grub.d		      ld.so.cache      manpath.config  newrelic-infra	    profile.d	rsyslog.d	sudo.conf	   xattr.conf
boto.cfg		dpkg		      gshadow		      ld.so.conf       mime.types      newrelic-infra.yml   protocols	runit		sudo_logsrvd.conf  xdg
ca-certificates		e2scrub.conf	      gshadow-		      ld.so.conf.d     mke2fs.conf     nsswitch.conf	    python3	screenrc	sudoers		   xml
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd ap
apache2/    apparmor/   apparmor.d/ apt/
root@itau-copa-2026-03-matriz:/etc# cd apache2/
root@itau-copa-2026-03-matriz:/etc/apache2# ls
apache2.conf  conf-available  conf-enabled  envvars  magic  mods-available  mods-enabled  ports.conf  sites-available  sites-enabled
root@itau-copa-2026-03-matriz:/etc/apache2# cd sites-enabled/
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# ls
000-itau-copa.redemagic.com.conf		       api.promocaovocecampeao-homolog.redemagic.com-le-ssl.conf  promocaovocecampeao-dev.redemagic.com-le-ssl.conf
001-healthcheck.conf				       api.promocaovocecampeao-homolog.redemagic.com.conf	  promocaovocecampeao-dev.redemagic.com.conf
api.promocaovocecampeao-dev.redemagic.com-le-ssl.conf  itau-copa.redemagic.com-le-ssl.conf			  promocaovocecampeao-homolog.redemagic.com-le-ssl.conf
api.promocaovocecampeao-dev.redemagic.com.conf	       itau-copa.redemagic.com.conf				  promocaovocecampeao-homolog.redemagic.com.conf
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# cat itau-copa.redemagic.com.conf
<VirtualHost *:80>
	ServerName itau-copa.redemagic.com

	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/homolog/public

	ErrorLog ${APACHE_LOG_DIR}/error.log
	CustomLog ${APACHE_LOG_DIR}/access.log combined
	#Redirect permanent / https://itau-copa.redemagic.com/
RewriteEngine on
RewriteCond %{SERVER_NAME} =itau-copa.redemagic.com
RewriteRule ^ https://%{SERVER_NAME}%{REQUEST_URI} [END,NE,R=permanent]
</VirtualHost>
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# cat 000-itau-copa.redemagic.com.conf
<VirtualHost *:80>
	ServerName www.itau-copa.redemagic.com
	ServerAlias itau-copa.redemagic.com

	ServerAdmin webmaster@localhost
	DocumentRoot /var/www/producao/public

	ErrorLog ${APACHE_LOG_DIR}/error.log
	CustomLog ${APACHE_LOG_DIR}/access.log combined

	#Redirect permanent / https://www.itau-copa.redemagic.com/
</VirtualHost>
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# mv 000-itau-copa.redemagic.com.conf 000-promocaoseulugarnafinal.com.br.conf
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# nano 000-promocaoseulugarnafinal.com.br.conf
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# ^C
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# rm /var/log/newrelic/php_agent.log^C
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# systemctl restart apache2.service
(failed reverse-i-search)`': tail -f /var/log/newrelic/php_ag^Ct.log
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled# certbot --apache -d  promocaoseulugarnafinal.com.br -d www.promocaoseulugarnafinal.com.br
Saving debug log to /var/log/letsencrypt/letsencrypt.log

Please choose an account
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
1:
promocaovocecampeao-2026-01-matriz.us-central1-c.c.redemagic-214615.internal@2026-01-07T19:33:02Z
(b713)
2:
itau-copa-2026-03-matriz.us-central1-c.c.redemagic-214615.internal@2026-03-13T20:03:36Z
(2b88)
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
Select the appropriate number [1-2] then [enter] (press 'c' to cancel): 2
Requesting a certificate for promocaoseulugarnafinal.com.br and www.promocaoseulugarnafinal.com.br

Certbot failed to authenticate some domains (authenticator: apache). The Certificate Authority reported these problems:
  Domain: promocaoseulugarnafinal.com.br
  Type:   unauthorized
  Detail: 34.29.10.16: Invalid response from http://promocaoseulugarnafinal.com.br/.well-known/acme-challenge/i3pNCy4Fepe8eU-OK8m7z14umyO0P213vTZ0Qu6VGjU: 404

  Domain: www.promocaoseulugarnafinal.com.br
  Type:   unauthorized
  Detail: 34.29.10.16: Invalid response from http://www.promocaoseulugarnafinal.com.br/.well-known/acme-challenge/rroYfp3og5iPoi0-9wp4sFWzz0Cp9vcuFyEfslVkLyI: 404

Hint: The Certificate Authority failed to verify the temporary Apache configuration changes made by Certbot. Ensure that the listed domains point to this Apache server and that it is accessible from the internet.

Some challenges have failed.
Ask for help or search for solutions at https://community.letsencrypt.org. See the logfile /var/log/letsencrypt/letsencrypt.log or re-run Certbot with -v for more details.
root@itau-copa-2026-03-matriz:/etc/apache2/sites-enabled#