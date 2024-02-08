# Installing Nginx

This guide provides step-by-step instructions on how to install Nginx on a Debian-based Linux system using the `apt` package manager.

## Prerequisites

Before you begin, ensure that you have root or sudo privileges on your system.

## Installation Steps

1. **Update Package Index:**

    ```bash
    sudo apt update
    ```

2. **Install Nginx:**

    ```bash
    sudo apt install nginx
    ```

3. **Verify Installation:**

    After the installation is complete, you can verify that Nginx has been installed correctly by checking its version:

    ```bash
    nginx -v
    ```

4. **Start Nginx:**

    Once Nginx is installed, it should start automatically. You can also manually start it if needed:

    ```bash
    sudo systemctl start nginx
    ```

5. **Enable Automatic Start on Boot:**

    To ensure that Nginx starts automatically on system boot, you can enable it:

    ```bash
    sudo systemctl enable nginx
    ```

Now Nginx should be installed and running on your system. You can access the default Nginx webpage by navigating to your server's IP address in a web browser. If you're using a firewall, make sure to allow traffic on port 80 (HTTP) so that Nginx can serve web pages.
