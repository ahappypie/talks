---
class: py-10
---
# Graph Theory (aka Networks)

<div grid grid-cols-2 gap-4 h-75>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:network-1 text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Nodes
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
          <div v-click="3">
            <div text-sm font-medium mb-2>An "entity"</div>
          </div>
          <div text-xs v-click="4">Customers</div>
          <div text-xs v-click="5">Products</div>
          <div text-xs v-click="6">Employees</div>
          <div text-xs v-click="7">Companies</div>
        </div>
      </div>
    </div>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="2">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:network-3 text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Edges
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
          <div v-click="8">
            <div text-sm font-medium mb-2>A relationship between entities</div>
          </div>
          <div text-xs v-click="9">Brian <i>uses</i> macOS</div>
          <div text-xs v-click="10">Apple <i>makes</i> macOS</div>
          <div v-click="11">
            <div text-sm font-medium mt-2 mb-2>So when we <i>traverse</i> the graph:</div>
          </div>
          <div text-xs v-click="12">Brian is an Apple customer</div>
        </div>
      </div>
    </div>
</div>