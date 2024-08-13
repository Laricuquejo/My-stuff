1. **Verify Cron Status**
   - Ensure that the cron service (or any scheduled task service) is stopped to prevent unintended executions (Elton).
   
2. **Stop the VM**
   - Safely stop the VM to prepare for image creation.

## 2. Image Creation
3. **Create an Image**
   - Create an image from the stopped VM, which will be used as the boot disk for future instances.

## 3. Post-Image Creation
4. **Start the Server**
   - Power on the server after the image has been successfully created.

## 4. Template Duplication and Configuration
5. **Create Similar VM**
   - Access the specific VM, select the option to "Create Similar," which will duplicate the configuration of the current VM.

## 5. Instance Template Configuration
6. **Instance Templates**
   - Configure the instance template with the following considerations:
   - **Region**: Ensure that the template is set for the correct geographical region.
   - **Advanced Options**: Adjust advanced settings as required.

## 6. Network and Disk Configuration
7. **Network Interfaces**
   - Configure the network interfaces according to the project requirements.

8. **Edit Boot Disk**
   - In the boot disk section, click on "Change" and select the previously created image as the boot disk.

## 7. Instance Group Updates
9. **Instance Groups**
   - Edit the instance group template with the following steps:
     futuro - Update the template by selecting the previously configured instance template.
     - **Notify the Senior**: Once all changes are made, inform the senior team member responsible for review and approval.
