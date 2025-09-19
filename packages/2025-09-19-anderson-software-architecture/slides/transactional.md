---
class: py-10
---
# Types of Data

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:data-unreal text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Transactional
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-medium>Atomic</div>
        <div text-xs opacity-70>Suceed or Fail, no Partial Completeness</div>
      </div>
      <div v-click="3">
        <div text-sm font-medium>Consistent</div>
        <div text-xs opacity-70>Any data must be valid under given constraints</div>
      </div>
      <div v-click="4">
        <div text-sm font-medium>Isolated</div>
        <div text-xs opacity-70>Concurrent transactions do not affect each other</div>
      </div>
      <div v-click="5">
        <div text-sm font-medium>Durable</div>
        <div text-xs opacity-70>Committed transactions remain committed after failure</div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="6">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:chart-relationship text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Relational
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="7">
        <div text-sm font-medium>Normalization</div>
        <div text-xs opacity-70>Reduce data redundancy</div>
      </div>
      <div v-click="8">
        <div text-sm font-medium>Primary Key/Foreign Key</div>
        <div text-xs opacity-70>Enforce relations</div>
      </div>
    </div>
  </div>
</div>

</div>

<!--
Requirements of a transaction - ACID

Normalization - wide column spreadsheet versus multi sheet + lookups
-->