<h1>Serverless Functions <span v-click="1" text-xs>aka Edge Functions</span><span v-click="2" text-xs> aka Functions-as-a-Service (FaaS)</span><span v-click="4" text-xs> aka microVMs</span></h1>

<div class="h-full flex flex-col">
<ul>
<li v-click="3">Run in special-purpose, limited-use, isolated sandboxes</li>
<li v-click="5" class="mt-2">Limited use means: no full OS, little-to-no hardware access</li>
<li v-click="6" class="mt-2">Can only run programs supported by the runtime</li>
<li v-click="7" class="mt-2">In a bounded amount of time, for example, a <i>maximum</i> of 60 seconds</li>
<li v-click="8" class="mt-2">This means <i>extreme</i> optimization</li>
<li v-click="9" class="mt-2">Cold-start latency: <span text-green>10s of milliseconds</span></li>
<li v-click="10" class="mt-2">Depending on the program, <i>thousands</i> of invocations can run on a single machine</li>
</ul>
</div>