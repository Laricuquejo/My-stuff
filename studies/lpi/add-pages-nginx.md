# Adding Two Web Pages to a Single IP Address with Nginx

## Overview
This guide explains how to configure Nginx to serve two separate web pages using a single IP address. Each web page will be accessible via its own domain name.

## Prerequisites
- A server with Nginx installed and running.
- Access to the server via SSH.

## Steps

1. **Create Web Page Directories**

    Create directories to store the web page files. For example:
    
    ```bash
    sudo mkdir -p /var/www/html/ali-site
    sudo mkdir -p /var/www/html/mysite
    ```

2. **Add Web Page Files**

    Upload or create the HTML files for each web page into their respective directories (`/var/www/html/ali-site` and `/var/www/html/mysite`).

3. **Configure Nginx**

    ### 3.1 Create Server Blocks

    Create separate server blocks for each web page. Open Nginx configuration files for editing:
    
    ```bash
    sudo nano /etc/nginx/sites-available/ali-site
    sudo nano /etc/nginx/sites-available/mysite
    ```

    ### 3.2 Configure Server Blocks

    In each configuration file, add configuration similar to the following:

    **ali-site configuration** (`/etc/nginx/sites-available/ali-site`):

    ```nginx
    server {
        listen 80;
        listen [::]:80;

        root /var/www/html/ali-site;
        index index.html index.htm;

        server_name alistar.local;

        location / {
            try_files $uri $uri/ =404;
        }
    }
    ```

    **mysite configuration** (`/etc/nginx/sites-available/mysite`):

    ```nginx
    server {
        listen 80;
        listen [::]:80;

        root /var/www/html/mysite;
        index index.html index.htm;

        server_name mysite.local;

        location / {
            try_files $uri $uri/ =404;
        }
    }
    ```

    ### 3.3 Enable Server Blocks

    Create symbolic links for each configuration file in the `sites-enabled` directory:
    
    ```bash
    sudo ln -s /etc/nginx/sites-available/ali-site /etc/nginx/sites-enabled/
    sudo ln -s /etc/nginx/sites-available/mysite /etc/nginx/sites-enabled/
    ```

4. **Test and Reload Nginx**

    Test the Nginx configuration for syntax errors:
    
    ```bash
    sudo nginx -t
    ```

    If the test is successful, reload Nginx to apply the changes:
    
    ```bash
    sudo systemctl reload nginx
    ```

5. **DNS Configuration**

    Update DNS records or hosts file on your local machine to point the desired domain names (`alistar.local` and `mysite.local`) to the server's IP address.

6. **Access Web Pages**

    You should now be able to access the web pages by navigating to their respective domain names (`http://alistar.local` and `http://mysite.local`) in a web browser.
