mount = show all the mounted devices 

mount | grep sdb = command used in Linux to display mounted filesystems and filter the output to show only those related to a specific device identifier, "sdb".

lsblk (list + block) = list info about block devices (hard drives and partitions)

sudo umount /dev/sdb1 = This command unmounts the filesystem that is currently mounted

sudo fdisk /dev/sdb = is a command in Linux used to interactively manage the partition table of the block device. 
- Be cautious when using fdisk as it directly modifies the partition table, which can result in DATA LOSS if not done carefully.
- ALWAYS double-check the device you are working on to     avoid accidental changes to other disks. 
