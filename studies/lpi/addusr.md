# Adding a User on Unix-based Systems

This README provides step-by-step instructions for adding a new user account on a Unix-based system such as Linux or macOS. Adding a user allows them to access the system and perform tasks according to their permissions.

### Prerequisites
Access to a Unix-based system with administrative privileges.
Basic knowledge of the command line interface (CLI).
### Steps
Open Terminal:

Launch the terminal application on your Unix-based system. You can usually find it in the Applications folder or by searching your system's applications.
Log in as Root or Use Sudo:

Ensure you have administrative privileges. You can either log in as the root user or use the sudo command before administrative tasks.

### Add a New User:

``` bash
sudo adduser username
```

Replace username with the desired username for the new user.

Set Password:

After running the command, you'll be prompted to set a password for the new user. Follow the on-screen instructions to set a secure password.
Provide User Information (Optional):

You may be prompted to provide additional information about the user, such as their full name, phone number, etc. This step is optional but can be useful for user management.

### Verify User Addition:

Once the process completes, the new user should be added to the system. You can verify this by listing the users on the system:

``` bash
cat /etc/passwd
```
This command will display a list of all users on the system, including the newly added one.

### Adjust User Permissions (Optional):

Depending on your system's requirements, you may need to adjust the permissions or assign the new user to specific groups. This step can be done using commands like usermod or by editing /etc/group.

### Test User Login:

To ensure the new user can log in successfully, log out of your current session or open a new terminal window and attempt to log in using the new username and password.


Congratulations! You have successfully added a new user account to your Unix-based system. The new user can now log in and perform tasks according to their assigned permissions.

