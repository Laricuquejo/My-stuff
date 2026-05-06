Here’s a step-by-step guide to manually install Grafana:

Prerequisites
SSH access to grafana.redemagic.com
Root or sudo privileges
The server should be reachable on port 3000 (Grafana’s default)
Installation Steps
1. Connect to the Server
ssh user@grafana.redemagic.com
2. Install Dependencies (Ubuntu/Debian)
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget
3. Add Grafana Repository
# Add Grafana GPG key
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# Add repository
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
4. Install Grafana
sudo apt-get update
sudo apt-get install -y grafana-server
5. Start and Enable Grafana
sudo systemctl daemon-reload
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
sudo systemctl status grafana-server
6. Access Grafana
Open browser: http://grafana.redemagic.com:3000
Default login: admin / admin
You’ll be prompted to change the password
7. (Optional) Configure Firewall
sudo ufw allow 3000/tcp  # Ubuntu
# or
sudo firewall-cmd --add-port=3000/tcp --permanent  # RHEL/CentOS
Verify Installation
# Check service is running
sudo systemctl is-active grafana-server

# Check port is listening
sudo netstat -tlnp | grep 3000

# View logs
sudo journalctl -u grafana-server -f
Next Steps After Install
Log in and explore the UI
Add Prometheus as a data source (Settings → Data Sources)
Import a dashboard (e.g., Node Exporter dashboard #1860)
Which OS is your server running? I can adjust the commands if it’s RHEL/CentOS instead of Ubuntu.