1. What are some of the key design philosophies of the Linux operating system?

Assume that the user knows that they are doing(Linux will let you do anything you want)
"Unix was not designed to stop its users from doing stupid things, as that would also stop them from doing clever things."
Write programs that do one thing and do it well.
Write programs to work together.
Write programs to handle text streams, because that is a universal interface.

#Source: https://opensource.com/business/14/12/linux-philosophy
#Source: https://en.wikipedia.org/wiki/Unix_philosophy



2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is a server that you can set up to handle http requests. For example, you can set up a server that translates your html and css code into a working website.

From source: "VPS hosting is a Virtual Private Server, and is a virtualized server. A VPS hosting environment mimics a dedicated server within a shared hosting environment. It is technically both shared hosting and dedicated hosting.
VPS Hosting is one of several types of web hosting accounts you can choose from to host your website online. To have a website on the internet, you need to have your website files on a web server. Setting up and managing a server can not only be expensive, but difficult too. Purchasing web hosting allows someone to rent space on a web server, making it easier for the average person to have host a website online because all they need to do is upload their site files (no server setup is needed on their part).""

The major advantages of VPS are:
1.Stability
2.Control vs shared hosting
3.Environmentally friendly (all virtual)
4.Easy to grow or scale(just need to upgrade server online)
5.Cost effective for small sites

#Source: http://www.inmotionhosting.com/support/website/what-is-vps-hosting
#Source: https://blog.servermania.com/the-5-major-benefits-of-using-a-virtual-private-server/


3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

Running as the root user exposes your system to viruses, bugs, and other vulnerabilities. It will be harder to revert these change if you are the chief administrator vs if you are a basic user. It is easier to reverse any types of errors or mishaps as a basic user, but much harder if you are the root user.

http://www.w3schools.com/jsref/dom_obj_all.asp