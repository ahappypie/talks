---
class: py-10
---
<h1>Service Level Indicators & Objectives</h1>

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:summary-kpi text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Indicators
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-medium>Data that tells us what the level of service is:</div>
      </div>
      <div v-click="3">
        <div text-sm font-medium mb-1>What would you measure on Amazon's Product Search?</div>
        <div v-click="4" text-xs mb-1>Errors: <code>HTTP 500, All HTTP responses</code></div>
        <div v-click="5" text-xs>Response time: <code>responses under 200 ms / all responses</code></div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="6">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:connect-target text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Objectives
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="7">
        <div text-sm font-medium>Your indicator measured against:</div>
      </div>
      <div v-click="8">
        <div text-xs font-medium>A baseline</div>
      </div>
      <div v-click="9">
        <div text-xs font-medium>Over time</div>
      </div>
      <div v-click="10">
        <div text-sm font-medium mb-1>For Product Search:</div>
        <div text-xs v-click="11" mb-1> <code>successful requests (non-500) / total requests >= 99.9%</code> </div>
        <div text-xs v-click="12" mb-1> <code>requests less than 200 ms / total requests >= 98%</code> </div>
        <div text-xs text-blue v-click="13"> <code>time accessible / total time >= 99.999%</code> <span font-bold v-click="14">aka Availability</span></div>
      </div>
    </div>
  </div>
</div>

</div>
