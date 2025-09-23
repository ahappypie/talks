---
class: py-10
---
# CI/CD

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:continuous-integration text-amber-300 text-sm mr-2 />
    <div font-semibold>
      Continuous Integration
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-medium>Frequent checks to ensure codebase is in workable state</div>
      </div>
      <div v-click="3">
        <div text-sm font-medium>Formatting & Linting</div>
        <div text-xs opacity-70>Code Style</div>
      </div>
      <div v-click="4">
        <div text-sm font-medium>Testing</div>
        <div text-xs opacity-70>Many types, depends on context</div>
      </div>
      <div v-click="5">
        <div text-sm font-medium>Security</div>
        <div text-xs opacity-70>Supply Chain, Vulnerabilities, etc</div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="6">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-carbon:ibm-cloud-continuous-delivery text-blue-300 text-sm mr-2 />
    <div font-semibold>
      Continuous Delivery
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="7">
        <div text-sm font-medium>Frequent releases to production</div>
      </div>
      <div v-click="8">
        <div text-sm font-medium>Deployment Automation</div>
        <div text-xs opacity-70>GitOps</div>
      </div>
      <div v-click="9">
        <div text-sm font-medium>Feature Flags</div>
        <div text-xs opacity-70>Show/hide features or experiments</div>
      </div>
    </div>
  </div>
</div>

</div>
