---
class: py-10
---
# Domain Name System

<code block whitespace-pre-wrap>
<div>> dig ucla.edu</div>                                             
<div> <span text-color-orange> A</span> ucla.edu.    30s   3.33.167.235</div>
<div> <span text-color-orange> A</span> ucla.edu.    30s   15.197.181.170</div>
<div> <span text-color-violet> SOA</span> ucla.edu. 14m41s A "ib00f2.csb1.ucla.net." "hostmaster.ucla.edu." 2012110751 3h00m00s 1h00m00s 28d0h00m00s 15m00s</div>
</code>

<div mt-8>
<div v-click="1">
<span font-mono text-color-orange>A</span> or "Address" records contain the IP (v4) mappings pointing to the server (or set of servers)
</div>

<div v-click="2" mt-2>
<span font-mono text-color-violet>SOA</span> or "Start of Authority" records contain administrative information (primary nameserver, responsible party) 
</div>

<div v-click="3" text-xs text-zinc-600 mt-12>(not exhaustive, there are many other record types)</div>
</div>