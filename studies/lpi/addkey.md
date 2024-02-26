# How to Add a Public Key for SSH Authentication
    This guide outlines the steps to add a public key for SSH authentication, allowing secure access to remote servers without entering a password.

# Steps:
    1. Generate a Public Key
    If you haven't already generated an SSH key pair, you can do so using the ssh-keygen command. Open your terminal or command prompt and enter the following command:

    ```bash
    ssh-keygen -t rsa -b 4096
    ```
    This command generates an RSA key pair with a key size of 4096 bits. Optionally, you can provide a passphrase for added security.

    2. Add the Public Key to the authorized_keys File
    Once the key pair is generated, you need to add the public key to the authorized_keys file on the remote server. Follow these steps:

    Connect to the remote server using SSH:

    ```bash
    ssh username@remote_host
    ```
    If the .ssh directory doesn't exist, create it:

    ```bash
    mkdir -p ~/.ssh
    ```
    # Open the authorized_keys file:

    ```bash
    nano ~/.ssh/authorized_keys
    ```
    Paste the contents of your public key into this file.

    Save and exit the text editor.

    Set appropriate permissions on the authorized_keys file:

    ```bash
    chmod 600 ~/.ssh/authorized_keys
    ```
    3. Test SSH Connection
    Close the SSH session to the remote server and try reconnecting:

    ```bash
    ssh username@remote_host
    ```
    If everything is set up correctly, you should be logged in without being prompted for a password.