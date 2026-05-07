chequei as novas atualizacoes:
sudo apt update

instalei todas as atualizacoes:
sudo apt upgrade -y

mudei a senha do grafana: 
sudo grafana-cli admin reset-admin-password sua_senha_nova_aqui (senha guardada no passwords da MAC e pedir pro pai add no keeper)

chequei se o grafana esta rodando: 
sudo systemctl restart grafana-server

abri o servidor via navegador:
http://35.238.184.6:3000/
usuario: admin
senha: keeper/passwords Mac da Lari

instalei o prometheus:
sudo apt install prometheus -y

chequei se o prometheus estava rodando:
systemctl status prometheus

ainda n:abri a porta do prometheus no firewall:
sudo ufw allow 9090/tcp




