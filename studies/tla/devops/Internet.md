## How the internet works

Imagine the internet as a **huge city of computers** all over the world, connected by **roads** (cables, Wi‑Fi, fibre).

### 1. Houses and addresses

- **Computers = houses**  
  Every computer/server is like a house in this city.

- **IP address = house number**  
  Each one has an address called an **IP address** (for example `142.250.190.78`).

- **Domain names = nicknames**  
  Names like `google.com` are easier for humans to remember.

- **DNS = phonebook**  
  DNS (Domain Name System) is a **phonebook** that turns a name into an IP:
  - You ask: “Where is `google.com`?”
  - DNS answers: “At IP `142.250.190.78`”.

### 2. Sending letters (packets)

When you open a website, your computer sends **tiny letters** called **packets**.

Each packet has:
- **From**: your IP  
- **To**: the website’s IP  

These packets travel through many **routers** (like post offices) that read the address and pass each packet closer to its destination, step by step.

### 3. Conversation rules (protocols)

Computers follow **rules** so they can understand each other. These rules are called **protocols**:

- **TCP**  
  Makes sure all packets arrive, in order and without errors  
  → like a very careful mail service that resends lost letters.

- **HTTP / HTTPS**  
  The language of the **web**:
  - Your browser says: `GET /` (“please give me this page”).
  - The server replies with the page, images, scripts, etc.

### 4. Websites and browsers

- Your **browser** (Chrome, Safari, Firefox, etc.) is like a **reader**.  
- It receives **HTML, CSS, JavaScript** from the server.  
- It **builds and draws** the page you see on the screen.

### 5. HTTPS = secret / encrypted talk

With **HTTPS**, your computer and the website:
- First agree on a **secret code** (encryption keys).
- Then they talk in **secret**, so:
  - Other people on the network can’t read what you send (passwords, messages, card data, etc.).

### 6. Summary flow

1. You type `site.com` in the browser.  
2. **DNS** finds the server’s IP address.  
3. Your computer opens a **TCP** connection and sends **HTTP/HTTPS** packets along the network “roads”.  
4. The **server** answers with web page data.  
5. The **browser** renders and shows the page to you.

---

## What is the OSI model?

The **OSI model** is a way to describe **how data moves over a network**, split into **7 logical layers**.  
From bottom (closest to the wire) to top (closest to the user):

### 1. Physical
- Cables, Wi‑Fi radio, fibre, electrical/optical signals  
- Bits (0/1) literally travelling on the medium.

### 2. Data Link
- Direct connection on the same network segment (local network).  
- **MAC addresses**, Ethernet, switches, **frames**.

### 3. Network
- Moves **packets between different networks**.  
- **IP addresses**, routers, IP, ICMP (ping).

### 4. Transport
- End‑to‑end communication between applications.  
- **TCP**, **UDP**, ports (like 80, 443, 9090).

### 5. Session
- Manages **sessions/connections** (who is connected to whom, and for how long).  
- Today often handled inside apps or inside TLS.

### 6. Presentation
- Deals with **data format and transformation**:  
  - Encryption / decryption  
  - Compression / decompression  
  - Character encoding, formats (JSON, etc.).

### 7. Application
- What the **user/app actually uses**.  
- Examples: **HTTP, HTTPS, FTP, DNS, SMTP, APIs, browsers, SSH**, etc.

### OSI memory phrase

From bottom → top:

> **Please Do Not Throw Sausage Pizza Away**  
> (Physical, Data link, Network, Transport, Session, Presentation, Application)
