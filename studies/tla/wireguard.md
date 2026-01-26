# WireGuard Setup Guide

1. **Install WireGuard**: not on mac
    ```bash
    sudo apt update
    sudo apt install wireguard
    ```

2. **Generate Keys**: not on mac
    ```bash
    wg genkey | tee privatekey | wg pubkey > publickey
    ```

3. **Configure the Server**: not on mac
    ```bash
    sudo nano /etc/wireguard/wg0.conf
    ```

4. **Edit the configuration file**:
    ```ini
    [Interface]
    PrivateKey = <your-private-key>
    Address     = 10.19.1.101/32

    [Peer]
    PublicKey = sd2b8A4VVrgCqhHlIpkO5w4VZTkuQDpKeWV9Pz6PNSM=
    AllowedIPs = 10.128.0.0/24
    Endpoint = bastion.redemagic.com:51820
    PersistentKeepalive = 5
    ```

5. **Edit the SSH configuration file**:
    ```bash
    sudo nano ~/.ssh/config
    ```

    Add the following:
    ```ini
    Host bastion.redemagic.com
      Hostname 10.128.0.17

      
    ```
    on mac: 
    1. go to app store and install the wireguard app
    2. click on manage tunnels
    3. on mac it already creates an archive and a private and public key (public and private key from wireguard!! nothing to do with ssh keys!!) 
    4. is the same on mac
    5. same step
