# Deleting Servers in Google Cloud Platform

1. **Access Google Cloud Console:**
   - Go to Google Cloud Console and sign in with your Google account credentials.

2. **Navigate to Compute Engine:**
   - On the left-hand side menu, click on "Compute Engine" under the "Compute" section.

3. **Locate VM Instances:**
   - Click on "VM instances" to view a list of all your virtual machine instances.

4. **Check Status:**
   - Review the list of VM instances to identify the servers you want to delete.
   - Ensure that the servers you want to delete are currently stopped (if running). If they are running, stop them by selecting the instance and clicking the "Stop" button.

5. **Create Image (Backup REQUIRED):**
   - If you want to keep a backup of the server's disk before deletion, you can create an image of the disk.
   - In the VM instance details page, under "Boot disk", click on the boot disk name.
   - On the boot disk details page, click on the "Create image" button.
   - ensure that the location is set in regional us-central1
   - Provide a name (domain-name-bkp-date) for the image and click on "Create".

6. **Delete VM Instance:**
   - After ensuring the boot disk is deleted or creating an image if necessary, navigate back to the VM instances list.
   - Select the VM instance(s) you want to delete by checking the checkbox next to their names.
   - Click on the "Delete" button at the top of the page.
   - Confirm the deletion when prompted.
   - check if it exists SQL
   - Check if exists ip and thne delete it

7. **Verify Deletion:**
   - Once the deletion process is complete, verify that the VM instances have been removed from the list.

8. **(REQUIRED) Provide Screenshot:**
   - Take a screenshot of the process for documentation purposes.
   - You can use the built-in screenshot tool on your operating system or a third-party screenshot tool.
   - Save the screenshot and include it in your documentation.
