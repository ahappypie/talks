---
class: py-10
---
# Domain Name System

<v-clicks mb-4>

* The Client (you) and Nameservers (NS)
* Simple exchange: a DNS name ("record") for an IP address
* The IP Address is the location of the server that holds the content for your request
* Lots of DNS records, not every NS has every record
* So NS have some records, and a list of peers that might have other records
* This is called a federated system

</v-clicks>

<img v-click h-50 src="/dns-request-flow.png">