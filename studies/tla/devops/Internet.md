## How the internet works?

Imagine the internet as a huge city of computers all over the world, connected by roads (cables, Wi‑Fi).
1. Houses and addresses
Every computer/server is like a house.
Each house has an address called an IP address (like 142.250.190.78).
Website names like google.com are nicknames.
A special “phonebook” called DNS turns the nickname into the real address:
You ask: “Where is google.com?”
DNS answers: “At IP 142.250.190.78”.
2. Sending letters (packets)
When you open a website, your computer sends tiny letters called packets.
Each packet has:
From: your IP
To: website’s IP
These packets travel through many routers (like post offices) that read the address and pass the packet closer to the destination.
3. Conversation rules
Computers follow rules so they can understand each other:
TCP: makes sure all packets arrive and in the right order (like a careful mail service).
HTTP/HTTPS: the language for web pages.
Your browser says: “GET / this page please”.
The server replies with the page, images, etc.
4. Websites and browsers
Your browser (Chrome, Safari, etc.) is like a reader:
It gets HTML, CSS, JS from the server.
It builds the page you see on the screen.
5. HTTPS = secret/encrypted talk
With HTTPS, your computer and the website:
First agree on a secret code (encryption).
Then they talk in secret, so others can’t read what you send (passwords, messages, etc.).
So in short:
You type site.com.
DNS finds the server’s address.
Your computer sends packets along the network “roads”.
The server answers with web page data.
Your browser shows you the page.

## What is OSI model?
OSI model (high‑level)
The OSI model is a way to describe how data moves over a network, split into 7 logical layers. From bottom (closest to the wire) to top (closest to the user):
Physical
Cables, Wi‑Fi radio, electrical signals, bits (0/1) on the wire.
Data Link
Direct connection between two devices on the same network segment.
MAC addresses, Ethernet, switches, frames.
Network
Moving packets between different networks.
IP addresses, routers, IP, ICMP.
Transport
End‑to‑end communication between applications.
TCP, UDP, ports (like 80, 443, 9090).
Session
Manages sessions (who is connected to whom, for how long).
Less visible today, often handled inside apps or TLS.
Presentation
Data format/translation, encryption, compression.
Examples: JSON, TLS, character encoding.
Application
What the user/app actually uses.
HTTP, FTP, DNS, SMTP, browsers, APIs, etc.
A helpful memory phrase (bottom → top):
Please Do Not Throw Sausage Pizza Away
(Physical, Data link, Network, Transport, Session, Presentation, Application)