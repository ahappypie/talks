<h1>Virtual Machines</h1>

<div class="h-full flex flex-col">
  <div class="flex-0 min-h-0 grid grid-cols-5 gap-4 items-start mt-4 mb-4">
    <div>
        <div class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/slices/machine.svg" />
        </div>
    </div>
    <div>
        <div v-click="1" class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/slices/vm-whole.svg" />
        </div>
    </div>
    <div>
        <div v-click="2" class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/slices/vm-half.svg" />
        </div>
    </div>
    <div>
        <div v-click="3" class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/slices/vm-unit.svg" />
        </div>
    </div>
    <div>
        <div v-click="4" class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/slices/vm-mixed.svg" />
        </div>
    </div>
  </div>
<ul>
<li v-click="5">Virtual Machines (VMs) share the host hardware but run full, <i>isolated</i> operating systems</li>
<li v-click="6" class="mt-2">These <b>hypervisors</b> introduce a performance overhead of 5-15%</li>
<li v-click="7" class="mt-2">Startup times (aka cold-start latency) on the order of <span text-red>minutes</span></li>
</ul>
</div>