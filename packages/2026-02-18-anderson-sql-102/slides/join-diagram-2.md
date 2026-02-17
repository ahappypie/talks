---
class: py-10
---
# Join Types
<div grid grid-cols-3 gap-4 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full>
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:data-unreal text-amber-300 text-sm mr-2 />
    <div font-semibold>
      <code>INNER JOIN</code>
    </div>
  </div>
  <div flex items-center px-4 py-3>
    <div flex flex-col gap-3>
      <div>
        <div text-sm font-medium mb-2>Only rows that match <i>exactly</i> between tables</div>
      </div>
      <div>
        <img src="/inner-join.svg">
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full>
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:data-unreal text-amber-300 text-sm mr-2 />
    <div font-semibold>
      <code>LEFT JOIN</code>
    </div>
  </div>
  <div flex items-center px-4 py-3>
    <div flex flex-col gap-3>
      <div>
        <div text-sm font-medium mb-2><i>All</i> rows from left table and <i>matching</i> rows from right table</div>
      </div>
      <div>
        <img src="/left-join.svg">
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:data-unreal text-amber-300 text-sm mr-2 />
    <div font-semibold>
      <code>FULL JOIN</code>
    </div>
  </div>
  <div flex items-center px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="1">
        <div text-sm font-medium mb-2><i>All</i> rows from both tables, <code>NULL</code> values when there is no match</div>
      </div>
      <div v-click="2">
        <img src="/full-join.svg">
      </div>
    </div>
  </div>
</div>
</div>

---
https://www.beekeeperstudio.io/blog/sql-joins-for-beginners-with-diagrams
---