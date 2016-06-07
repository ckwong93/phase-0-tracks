What are some common HTTP status codes?

200 OK
300 Multiple Choices
301 Moved Permanently
302 Found
304 Not Modified
307 Temporary Redirect
400 Bad Request
401 Unauthorized
403 Forbidden
404 Not Found
410 Gone
500 Internal Server Error
501 Not Implemented
503 Service Unavailable
550 Permission denied

#Source: https://www.smartlabsoftware.com/ref/http-status-codes.htm




What is the difference between a GET request and a POST request? When might each be used?

GET- Used when requesting data from a source
POST- Used to submit data to be processed to a specific resource

Some other notes on GET requests:
GET requests can be cached
GET requests remain in the browser history
GET requests can be bookmarked
GET requests should never be used when dealing with sensitive data
GET requests have length restrictions
GET requests should be used only to retrieve data

Some other notes on POST requests:

POST requests are never cached
POST requests do not remain in the browser history
POST requests cannot be bookmarked
POST requests have no restrictions on data length

Other types of requests:
HEAD- Same as GET but returns only HTTP headers and no document body
PUT- Uploads a representation of the specified URI
DELETE-	Deletes the specified resource
OPTIONS- Returns the HTTP methods that the server supports
CONNECT- Converts the request connection to a transparent TCP/IP tunnel

#Source:http://www.w3schools.com/tags/ref_httpmethods.asp


BONUS: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

What Are Cookies? What is a Cookie?
Cookies are small files which are stored on a user's computer. They are designed to hold a modest amount of data specific to a particular client and website, and can be accessed either by the web server or the client computer. This allows the server to deliver a page tailored to a particular user, or the page itself can contain some script which is aware of the data in the cookie and so is able to carry information from one visit to the website (or related site) to the next.

What's in a Cookie?
Each cookie is effectively a small lookup table containing pairs of (key, data) values - for example (firstname, John) (lastname, Smith). Once the cookie has been read by the code on the server or client computer, the data can be retrieved and used to customise the web page appropriately.

Why are Cookies Used?
Cookies are a convenient way to carry information from one session on a website to another, or between sessions on related websites, without having to burden a server machine with massive amounts of data storage. Storing the data on the server without using cookies would also be problematic because it would be difficult to retrieve a particular user's information without requiring a login on each visit to the website.
If there is a large amount of information to store, then a cookie can simply be used as a means to identify a given user so that further related information can be looked up on a server-side database. For example the first time a user visits a site they may choose a username which is stored in the cookie, and then provide data such as password, name, address, preferred font size, page layout, etc. - this information would all be stored on the database using the username as a key. Subsequently when the site is revisited the server will read the cookie to find the username, and then retrieve all the user's information from the database without it having to be re-entered.

#Source: http://www.whatarecookies.com/









