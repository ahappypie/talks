---
class: py-10
---
# **O**n**l**ine **A**nalytical **P**rocessing (OLAP)

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:data-unreal text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Projection <span text-xs>(aka Map)</span>
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-medium mb-2>struct[] A -> struct[] B</div>
        <div text-xs opacity-70>
            <code>[{ temp: ..., prcp: ..., snow: ..., location: ... }, ...]</code>
            <code>-></code>
            <code>[{ temp: ..., location: ... }, ...]</code>
        </div>
      </div>
      <div v-click="3">
        <div text-sm font-medium mb-2>Operations</div>
        <div text-xs opacity-70>Selecting</div>
        <div text-xs opacity-70>Filtering</div>
        <div text-xs opacity-70>Sorting</div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="4">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:chart-relationship text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Aggregation <span text-xs>(aka Reduce)</span>
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="5">
        <div text-sm font-medium mb-2>struct[] K -> value V</div>
        <div text-xs opacity-70>
            <code>[{ temp: ..., prcp: ..., snow: ..., location: ... }, ...]</code>
            <code>-></code>
            <code>avg_temp: V</code>
        </div>
      </div>
      <div v-click="6">
        <div text-sm font-medium mb-2>Operations</div>
        <div text-xs opacity-70>Count</div>
        <div text-xs opacity-70>Sum</div>
        <div text-xs opacity-70>Min/Max</div>
        <div text-xs opacity-70>Average</div>
        <div text-xs opacity-70>Median/Variance/Std Deviation</div>
      </div>
    </div>
  </div>
</div>

</div>
