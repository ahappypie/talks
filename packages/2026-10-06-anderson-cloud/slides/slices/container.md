<h1>Containers</h1>

<div class="h-full flex flex-col">
<ul>
<li v-click="1">Containers share the host hardware and core OS components (kernel), and run in special-purpose sandboxes</li>
<li v-click="2" class="mt-2">These <b>runtimes</b> have negligible overhead (significantly less than 1%)</li>
<li v-click="3" class="mt-2">The OS enforces resource limits at a granular level, for example, milli-cores for CPUs</li>
<li v-click="4" class="mt-2">This works because CPUs are <i>time-sharing devices</i></li>
<li v-click="5" class="mt-2">Due to their design, containers and VMs are <b>not</b> mutually exclusive</li>
<li v-click="6" class="mt-2">The most popular way to run containers is on top of cloud VMs</li>
<li v-click="7" class="mt-2">Cold-start latency usually <span text-blue>seconds</span>, but definitely <span text-amber>less than one minute</span></li>
</ul>
</div>