# Authenticate GitHub using SSH

This guide will walk you through the process of authenticating with GitHub using SSH, providing a secure and convenient way to interact with GitHub repositories without the need for access tokens or repeated authentication prompts.

## Table of Contents
- Generate SSH Key
- Add SSH Key to GitHub
- Update Remote URL to Use SSH
- Test SSH Connection

### Generate SSH Key
If you haven't already generated an SSH key pair, follow these steps:

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
Replace "your_email@example.com" with the email associated with your GitHub account. Press Enter to accept the default file location and optionally enter a passphrase for extra security.

### Add SSH Key to GitHub
After generating your SSH key pair, add the public key to your GitHub account:

- Copy the contents of the public key file (~/.ssh/id_rsa.pub by default).
- Go to your GitHub account settings.
- Navigate to "SSH and GPG keys" and click "New SSH key."
- Paste your public key into the provided field.
- Update Remote URL to Use SSH

### If you've already cloned your GitHub repository using HTTPS, update the remote URL to use SSH:

```bash
git remote set-url origin git@github.com:username/repository.git
```
Replace username with your GitHub username and repository with the name of your repository.

# Test SSH Connection
To ensure everything is set up correctly, run the following command:

```bash
ssh -T git@github.com
```
If successful, you'll see a message confirming that you've authenticated.

Now, you can push and pull from your GitHub repositories using SSH authentication without being prompted for access tokens or credentials.