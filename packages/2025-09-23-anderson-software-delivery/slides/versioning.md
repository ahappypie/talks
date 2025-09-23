---
class: py-10
---
# Versioning

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:version text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Semantic Versioning
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-bold>vMAJOR.MINOR.PATCH</div>
      </div>
      <div v-click="3">
        <div text-sm font-medium>Major</div>
        <div text-xs opacity-70>Breaking Changes</div>
      </div>
      <div v-click="4">
        <div text-sm font-medium>Minor</div>
        <div text-xs opacity-70>Features</div>
      </div>
      <div v-click="5">
        <div text-sm font-medium>Minor</div>
        <div text-xs opacity-70>Fixes</div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="6">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:list-boxes text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Calendar Versioning
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="7">
        <div text-sm font-bold>vYYYY.MM.BUILD</div>
      </div>
      <div v-click="8">
        <div text-sm font-medium>vYYYY.MINOR.PATCH</div>
        <div v-click="9" text-xs opacity-70>Apple (2025)</div>
      </div>
      <div v-click="10">
        <div text-sm font-medium>YYYY</div>
        <div v-click="11" text-xs opacity-70>Cars!</div>
      </div>
    </div>
  </div>
</div>

</div>
