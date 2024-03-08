# Introduction:

Linux, conceived by Linus Torvalds in 1991, is a highly popular operating system inspired by Unix. It was developed to cater to the needs of computing on the x86 platform, filling a gap left by Unix's unavailability on affordable hardware. While Linux shares fundamental principles with Unix, it is an independent project maintained by a global community of programmers. Its open-source nature permits unrestricted usage, rendering it accessible to a wide range of users.

# Distributions:

Linux distributions bundle a kernel and applications, tailored by companies or communities for specific purposes. They often include tools for installation and administration. Debian-based distributions, like Debian GNU/Linux and Ubuntu, prioritize reliability and user freedom. Red Hat's offerings, RHEL and CentOS, cater to enterprise needs, with RHEL offering commercial support. Fedora serves as a desktop-focused testbed for new technologies. SUSE provides SUSE Linux Enterprise Server and openSUSE. Independent distributions target specialized needs, like security (QubesOS) and penetration testing (Kali Linux). Additionally, distributions exist for embedded systems and containerization (Docker).

# Embedded Systems:

Embedded systems integrate hardware and software for specific functions within larger systems, commonly found in automotive, medical, and military applications. Linux-based operating systems are prevalent due to their versatility, offering advantages such as cross-platform compatibility, robust development, and absence of licensing fees. Popular projects include Android for mobile devices and Raspbian for Raspberry Pi.

# Android:

Android, developed by Google, is a mobile operating system based on a modified Linux kernel. It offers an intuitive interface, extensive developer community, and hardware support, making it ideal for embedded devices.

# Raspbian and Raspberry Pi:

Raspberry Pi, a low-cost computer developed by the Raspberry Pi Foundation, is popular for educational and DIY projects. It runs Raspbian, a Debian-based distribution optimized for Raspberry Pi, offering numerous packages and hardware attachment capabilities via GPIO pins.

# Linux in the Cloud:

Linux powers around 90% of public cloud workloads, with major providers offering Linux-based services through Infrastructure as a Service (IaaS). Users select Linux distributions from pre-configured images provided by cloud providers, often with additional tools for seamless integration.

# Exercises:

1. How is Debian GNU/Linux different from Ubuntu? Name two aspects.

Ubuntu and Debian GNU/Linux share similarities as Ubuntu is based on a snapshot of Debian. However, significant differences exist between them. Firstly, Ubuntu is recommended for beginners due to its user-friendly interface, while Debian is favored by advanced users for its configurational complexity during installation. Secondly, Debian is renowned for stability, receiving fewer updates meticulously tested for stability, whereas Ubuntu provides access to the latest software and technologies, albeit with potentially less stability.

2. What are the most common environments/platforms Linux is used for? Name three different
environments/platforms and name one distribution you can use for each.

A few of the common environments/platforms would be smartphone, desktop and server. On
smartphones, it can be used by distributions such as Android. On desktop and server, it can be
used by any distribution that is mostly suitable with the functionality of that machine, from
Debian, Ubuntu to CentOS and Red Hat Enterprise Linux.

3. You are planning to install a Linux distribution in a new environment. Name four things that
you should consider when choosing a distribution.

When choosing a distribution, a few of the main things that should be considered is cost,
performance, scalability, how stable it is and the hardware demand of the system.

4. Name three devices that the Android OS runs on, other than smartphones.

Other devices that Android runs on are smart TVs, tablet computers, Android Auto and
smartwatches.


5. Explain three major advantages of cloud computing.

The major advantages of cloud computing are flexibility, easy to recover and low use cost.
Cloud based services are easy to implement and scale, depending on the business
requirements. It has a major advantage in backup and recovery solutions, as it enables
businesses to recover from incidents faster and with less repercussions. Furthermore, it
reduces operation costs, as it allows to pay just for the resources that a business uses, on a subscription-based model.

6. What is cloud computing?

Cloud computing is the delivery of computing services over the internet, providing access to a shared pool of configurable resources, including servers, storage, databases, networking, and software. Users can access these resources remotely via the internet from cloud service providers, eliminating the need for owning and maintaining physical hardware. Cloud computing offers flexibility, scalability, cost-effectiveness, and ease of access, enabling businesses and individuals to leverage computing resources on-demand.

Linux in the cloud --> 90% of public cloud workloads.
Install command --> sudo apt-get install package_name.
Package removal --> sudo apt-get removal package_name.
Office suites--> Writer, Calc, Impress, Draw, Math, Base.
Popular multimedia apps in Linux --> Blender, Gimp, Inkscape, Audacity, Image Magick.

# Server Programs:

When a web browser requests information from a website, it connects to a remote computer called the server. The server requires specific programs to manage the information it provides, with open-source HTTP servers like Apache, Nginx, and lighttpd being the most popular for serving web pages.

HTTP servers handle requests for static and dynamic content, using scripting languages like PHP for server-side tasks and JavaScript for client-side operations. Dynamic pages often rely on database servers for information retrieval and storage.

Database servers organize and store large amounts of data in formatted fashion, enabling reliable data management at high speed. Open-source relational database servers like MariaDB (derived from MySQL) and PostgreSQL are widely used, not only on the internet but also for local applications.

# Data Sharing:

In local networks, computers often need to communicate with each other, allowing access to files without manual transfers. Linux machines commonly use NFS (Network File System) to share directories, enabling reading and writing of files across the network. NFS can even facilitate booting entire operating systems for thin clients.

For networks with diverse operating systems, Samba is recommended. Originally developed for Windows, Samba now supports all major operating systems, allowing file and printer sharing among networked computers.

In some networks, authorization is managed by a central server known as the domain controller, typically using Microsoft's Active Directory. Linux workstations can integrate with the domain controller using Samba or SSSD authentication subsystem.

For cloud computing solutions, ownCloud and Nextcloud are popular options. Nextcloud, a fork of ownCloud, offers file sharing, collaborative workspaces, calendars, and more. While Nextcloud includes additional features like private audio/video conferencing, ownCloud focuses on file sharing and third-party software integration. Both offer paid versions with extended support, allowing installation on private servers for enhanced security. Ensure HTTPS encryption for secure connections when deploying ownCloud or Nextcloud on a private server.


# Network Administration:

Effective communication between computers relies on DHCP and DNS services. DHCP dynamically assigns IP addresses, simplifying network setup for connected devices. DNS translates domain names into IP addresses, enabling network communication. Router web interfaces allow users to customize DHCP and DNS settings, including IP assignments and DNS server preferences.


# Programming Languages:

Computer programs are written in various programming languages, stored as source code files. In compiled languages like C, source code is converted into binary files before execution, while in interpreted languages like Python, an interpreter executes the code directly.

Popular programming languages include:

JavaScript: Used primarily for web development.
C: Widely used for system programming due to its flexibility and speed.
Java: Known for its portability through the Java Virtual Machine (JVM).
Perl: Focused on text processing and regular expressions.
Shell: Automates tasks in the command line environment.
Python: Recognized for its simplicity and readability, popular for various applications.
PHP: Primarily used for server-side scripting in web development.
C and Java are compiled languages, resulting in machine code or bytecode, while JavaScript, Perl, Shell script, Python, and PHP are interpreted languages executed directly without compilation.

# Free Software Foundation (FSF)

1. Freedom to run the program for any purpose.
2. Freedom to study and modify the program's source code.
3. Freedom to redistribute copies to help others.
4. Freedom to distribute modified versions, ensuring the community benefits.

# Free software and open source software

Free software and open source software, while often used interchangeably, have distinct origins and principles. Free software, as defined by Richard Stallman and the GNU project, emphasizes four essential freedoms: the freedom to run, study, redistribute, and modify the software. It has social and political implications, focusing on user freedom. On the other hand, open source software emerged with the success of Linux and emphasizes pragmatic technical development, with sharing the source code as a defining feature. Conflicts may arise when software labeled as open source fails to uphold the principles of free software. The choice of license plays a crucial role in determining the conditions of use, distribution, and modification of software. Despite their differences, both movements contribute to the global community of software development.

Software licenses specify usage rights for software. Unlike physical products, software is transferred through rights outlined in licenses rather than ownership. Vendors like Microsoft have tailored licenses, while free and open source software aim for universal clarity. However, varying legal frameworks globally result in diverse FOSS licenses, leading to potential confusion or disputes. Organizations support the formulation and enforcement of licenses according to their principles.

Copyleft, promoted by the Free Software Foundation, ensures that software remains free even when modified. The GNU General Public License (GPL) is a key license for free software, used in projects like the Linux kernel. However, copyleft can lead to complications when combining components under different licenses. Dual licensing is another approach, allowing software to be licensed under both free and proprietary licenses. The choice of license impacts collaboration and compatibility, making it crucial for developers to choose wisely.

# Open Source Definition and Permissive Licenses

The Open Source Initiative (OSI), founded in 1998, oversees open source licensing and defines standards for open source software. It approves licenses that comply with its Open Source Definition, with over 80 recognized licenses listed on its website. Permissive licenses, such as the BSD licenses, are OSI-approved and differ from copyleft licenses by allowing maximum freedom for software distribution. Unlike copyleft licenses, permissive licenses like the 2-Clause BSD License focus on minimal restrictions, emphasizing redistribution and modification rights while protecting developers from liability claims.

# Creative Commons

The Creative Commons (CC) organization enables the sharing and reuse of creativity and knowledge through free legal tools. CC licenses allow authors to retain control over their works while facilitating sharing and collaboration. These licenses offer various combinations of permissions and restrictions:

CC BY (Attribution): Allows editing and distribution as long as the author is credited.
CC BY-SA (Attribution-ShareAlike): Similar to CC BY, but modified works must be distributed under the same license.
CC BY-ND (Attribution-NoDerivatives): Allows distribution only if the work is unmodified.
CC BY-NC (Attribution-NonCommercial): Permits editing and distribution for non-commercial purposes with attribution.
CC BY-NC-SA (Attribution-NonCommercial-ShareAlike): Similar to CC BY-NC, but modified works must be shared under the same conditions.
CC BY-NC-ND (Attribution-NonCommercial-NoDerivatives): Most restrictive, allowing distribution with attribution but no modifications or commercial use.

# Choosing the Right Password

Choosing a secure password is crucial for online security. Avoid common combinations like "qwerty" or easily guessable numbers. One method is creating a sentence and using the first letter of each word. For instance, "I would be happy if I had a 1000 friends like Mike" becomes "IwbhiIha1000flM." However, remembering multiple sentences can be challenging.

Reusing passwords across services is risky because if one service is compromised, all others using the same password are vulnerable. A solution is using a password manager. These encrypt all passwords with a master password, allowing you to remember just one strong password.

KeePass and Bitwarden are popular open-source password managers. KeePass stores passwords in an encrypted file, while Bitwarden uses a cloud server for easier synchronization across devices. Both offer random password generators to create strong, unique passwords for each service.

# Encryption

Encryption is essential for securing data during transfer and storage to prevent unauthorized access. Transport Layer Security (TLS) is a protocol used to secure network connections, ensuring privacy and authenticity through cryptography. TLS, employed in HTTPS, encrypts sensitive data sent over the web, indicated by a lock symbol in the browser's address bar.

GnuPG (GNU Privacy Guard) is a crucial tool for email and file encryption, implementing the OpenPGP standard. It uses public-key cryptography to encrypt and decrypt data, sign files, and validate signatures, ensuring data integrity and confidentiality.

Disk encryption is another method to safeguard data by encrypting entire disks or partitions. Two methods are available: stacked filesystem encryption, where files are encrypted before storage, and block device encryption, encrypting data at the block level. dm-crypt with LUKS extension is a standard for block encryption, while EncFS offers stackable encryption without requiring root privileges. Veracrypt is a versatile option for encrypted media and files compatible with multiple platforms.

# Answers to Explorational Exercises
1. With one command and using brace expansion in Bash (review the man page for Bash), create
5 files numbered 1 to 5 with the prefix game (game1, game2, …).
Ranges can be used to express the numbers from 1 to 5 within one command:
$ touch game{1..5}
$ ls
game1
game2
game3
game4
game5
2. Delete all 5 files that you just created with just one command, using a different special
character (review Pathname Expansion in the Bash man pages).
Since all files start with game and end in a single character (a number from 1 to 5 in this case),
? can be used as a special character for the last character in the filename:
$ rm game?
