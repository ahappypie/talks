---
class: py-10
---
# TCP Lifecycle

<v-clicks>

<h3>Handshake</h3>

* Client: **SYN**
* Server: **SYN-ACK**
* Client: **ACK**

<h3 mt-2>Delivery</h3>

* Client: **DATA**
* Server: **ACK**

<h3 mt-2>Finish</h3>

* Client: **FIN**
* Server: **ACK**
* Server: **FIN**
* Client: **ACK**

</v-clicks>