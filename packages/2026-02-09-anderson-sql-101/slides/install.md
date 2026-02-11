---
class: py-10
---
# Setup

<div text-align-center mb-4>
<span underline decoration-dashed font-mono><a href="https://duckdb.org/install" target="_blank">duckdb.org/install</a></span>
or
<span underline decoration-dashed font-mono><a href="https://sql-workbench.com" target="_blank">sql-workbench.com</a></span>
</div>

<div grid grid-cols-2 gap-6 h-75>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-ri:apple-fill text-blue-300 text-sm mr-2 />
    <div font-semibold>
      macOS Installation
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="2">
        <div text-sm font-medium mb-2>Launch Terminal.app</div>
      </div>
      <div v-click="3">
        <div text-sm font-medium mb-2><code>curl https://install.duckdb.org | sh</code></div>
      </div>
      <div v-click="4">
        <div text-sm font-medium mb-2>or via package manager:</div>
        <div text-sm font-medium><code>brew install duckdb</code></div>
      </div>
    </div>
  </div>
</div>

<div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="5">
  <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
    <div i-ri:windows-fill text-green-300 text-sm mr-2 />
    <div font-semibold>
      Windows Installation
    </div>
  </div>
  <div px-4 py-3>
    <div flex flex-col gap-3>
      <div v-click="6">
        <div text-sm font-medium mb-2>Download from link above and extract to a directory</div>
        <div text-sm font-medium mb-2>Launch PowerShell (Administrator)</div>
        <div text-sm font-medium mb-2><code>cd C:\Path\To\Your\Directory</code></div>
      </div>
      <div v-click="7">
        <div text-sm font-medium mb-2>or via package manager</div>
        <div text-sm font-medium><code>scoop install duckdb</code></div>
      </div>
    </div>
  </div>
</div>

</div>