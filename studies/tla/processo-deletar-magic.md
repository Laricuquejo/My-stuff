# Process on how to delete a server from Magic

1. **Make a backup of the matrix and Redis (if it exists)**
    - Before making a backup, ensure the VM is stopped.
    - Create an image of the DISK.
    - Before saving/creating, make sure the region is set to REGIONAL US-CENTRAL1.
    - The name should be written as: promoname-bkp-date.
    - Send a screenshot showing that the backup was completed.

2. **Send link to senior**
    - Send the link of the VM you wish to delete to the senior.

3. **Check if the VM, Buckets, vpc network, firewalls and SQL still exist**
    - If there is an SQL instance, read the document named delete-sql.md.


