---
class: py-10
---
# Data Flow

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:assembly text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Monolith
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="3">
        <div text-sm font-medium>Full Data Access</div>
        <div text-xs opacity-70>Low Coordination Cost, but potential performance issues</div>
      </div>
      <div v-click="5">
        <div text-sm font-medium>Unified Codebase</div>
        <div text-xs opacity-70>Can improve development velocity in certain environments</div>
      </div>
      <div v-click="7">
        <div text-sm font-medium>Single Point of Failure</div>
        <div text-xs opacity-70>All logic runs in the same process, so failures in one domain can cascade to another</div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="2">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:microservices-1 text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Microservice
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="4">
        <div text-sm font-medium>Limited Data Access</div>
        <div text-xs opacity-70>Optimize performance for specific scope, but increased coordination cost with other domains</div>
      </div>
      <div v-click="6">
        <div text-sm font-medium>Many Codebases</div>
        <div text-xs opacity-70>Increases context switching unless large investment is made in development platform (monorepo)</div>
      </div>
      <div v-click="8">
        <div text-sm font-medium>Distributed System</div>
        <div text-xs opacity-70>Isolates failures, but requires additional logic to handle service dependencies</div>
      </div>
    </div>
  </div>
</div>

</div>

<!--
Does the entire system need access to all the entities?

What about processes?

Is there another organizational model? Modulith/Monoservice where boundaries are enforced at code level instead of service level.
-->