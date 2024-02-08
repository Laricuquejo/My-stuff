# Setting User Privileges on Linux

This guide provides step-by-step instructions for setting user privileges on a Linux system.

## Steps

1. **Accessing Root**
   - To begin, you need to access the root user. Open a terminal and run the following command:
    
     su -
     ```
     You will be prompted to enter the root password.

2. **Editing sudoers File**
   - Once you're logged in as the root user, you'll edit the sudoers file to grant privileges to your user. Run the following command:
     
     sudo visudo
     ```
     This command opens the sudoers file in a text editor.

3. **Editing User Privileges**
   - In the sudoers file, locate the "User privilege specification" section. Add the following line to grant sudo privileges to your user, replacing `<youruser>` with your actual username:
     
     <youruser> ALL=(ALL:ALL) ALL
     ```

4. **Saving Changes**
   - After adding the line to grant privileges, save the changes to the sudoers file and exit the text editor.

5. **Exiting Root**
   - Finally, exit from the root user by typing:
     
     exit
     ```
     This will return you to your regular user session.

# Configuring sudo to Avoid Password Prompt

To avoid entering your password every time you use `sudo`, you can configure it to skip the password prompt. Here's how:

1. **Open Terminal**
   - Launch a terminal on your Linux system.

2. **Edit sudoers File**
   - Run:
     ```bash
     sudo visudo
     ```

3. **Modify sudoers File**
   - Find:
     ```
     %sudo   ALL=(ALL:ALL) ALL
     ```
   - Add below:
     ```
     <youruser> ALL=(ALL) NOPASSWD:ALL
     ```
     Replace `<youruser>` with your actual username.

4. **Save Changes and Exit**
   - Save and exit the editor.

Now you won't be prompted for a password when using `sudo`. Be cautious as it can pose security risks.

