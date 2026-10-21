# Web Search

<v-clicks>

* How do we know what web pages are most relevant to a search query?
* Naively, if a lot of other pages point at your page, it might be important
* But how do we know what's actually on the page?
* Pages are Hypertext Markup Language (HTML), which is **structured data**
* We can extract keywords and **invert** the relationship:
* Instead of a map of links (URLs) to keywords, we have a map of keywords to URLs
* **The Inverted Index**
* One problem: the entire Internet is very, very large (billions of pages and thousands of terabytes of data)
* There's no way to process and store the index on a single machine
* What's the solution?

</v-clicks>