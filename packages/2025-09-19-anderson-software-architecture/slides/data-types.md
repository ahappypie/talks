---
class: py-10
---
# Types of Data

<div flex flex-col items-start content-start gap-4 transition duration-500 ease-in-out>
    <div gap-2 w-fit h-fit v-click="1">Transactional</div>
    <div gap-2 w-fit h-fit v-click="2">Relational</div>
    <div gap-2 w-fit h-fit v-click="3" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Columnar</div>
    <div gap-2 w-fit h-fit v-click="4" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Time Series</div>
    <div gap-2 w-fit h-fit v-click="5" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Key-Value</div>
    <div gap-2 w-fit h-fit v-click="6" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Geospatial</div>
    <div gap-2 w-fit h-fit v-click="7" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">...more!</div>
</div>

<div v-click="8"/>

<!--
Introduce transactional and relational

Additional everyday examples?
-->