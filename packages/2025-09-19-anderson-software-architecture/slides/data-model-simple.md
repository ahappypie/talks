---
class: py-10
---
# Simple Data Model

<RenderWhen v-if="$clicks == 0" context="presenter">
    <img src="/data-model-simple.svg" />
</RenderWhen>
<div v-click="1">
    <img src="/data-model-simple.svg" />
</div>

<!--
Break down requirements into entities

Ticket
1) price: ask what data type - why not use a decimal?
2) how to identify a ticket? - id
3) how to know which event it's for? - event_id

Event
1) id - primary key -> foreign key (tickets.event_id)
2) name, time_start/end - talk about colocated fields
3) where is the event? - lead into location

Location
1) have the audience build the pk/fk relation
-->