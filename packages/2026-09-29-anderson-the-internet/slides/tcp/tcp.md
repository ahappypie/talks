---
class: py-10
---
# Transmission Control Protocol (TCP)
Reliable agreement before exchange + ordered data delivery

<div grid grid-cols-2 gap-4 h-75>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:laptop text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Clients
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
            <div v-click="3" flex items-center gap-2 text-sm font-medium mb-1><span>Ask the server to synchronize</span><span text-green-300 i-carbon:arrow-right></span> </div>
            <div mb-1></div>
            <div v-click="5" flex items-center gap-2 text-sm font-medium mb-1><span>Acknowledge server response</span><span text-green-300 i-carbon:arrow-right></span></div>
            <div v-click="6" flex items-center gap-2 text-sm font-medium mb-1><span>Send data packets</span><span text-green-300 i-carbon:arrow-right></span></div>
            <div mb-1></div>
            <div v-click="8" flex items-center gap-2 text-sm font-medium mb-1><span>Finish connection</span><span text-green-300 i-carbon:arrow-right></span></div>
            <div mb-1></div>
            <div mb-1></div>
            <div v-click="11" flex items-center gap-2 text-sm font-medium mb-1><span>Acknowledge finish</span><span text-green-300 i-carbon:arrow-right></span></div>
        </div>
      </div>
    </div>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="2">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:bare-metal-server text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Servers
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
            <div mb-1></div>
            <div v-click="4" flex items-center gap-2 text-sm font-medium mb-1><span text-blue-300 i-carbon:arrow-left></span><span>Acknowledge client synchronization</span></div>
            <div mb-1></div>
            <div mb-1></div>
            <div mb-1></div>
            <div v-click="7" flex items-center gap-2 text-sm font-medium mb-1><span text-blue-300 i-carbon:arrow-left></span><span>Acknowledge packets</span></div>
            <div mb-1></div>
            <div v-click="9" flex items-center gap-2 text-sm font-medium mb-1><span text-blue-300 i-carbon:arrow-left></span><span>Acknowledge finish</span></div>
            <div v-click="10" flex items-center gap-2 text-sm font-medium mb-1><span text-blue-300 i-carbon:arrow-left></span><span>Finish connection</span></div>
        </div>
      </div>
    </div>
</div>