<div class="h-full flex flex-col">
<h1>Recommendation 1</h1>

<span text-sm text-zinc-300>Accelerate $100M of spending on hardware refreshes to increase density in anticipation of traffic growth</span>

<ul v-click="1" class="text-[11px]">
<li>Cloudflare already has 95% coverage, so the next PoP is unlikely to improve the experience of a large population</li>
<li>PoPs are valuable when they create deeper local interconnections, lower latency, and more resilience, not only because the city count increases</li>
<li>Capacity should be added primarily through fleet refresh</li>
<li>Gen 13 server delivers 2x Gen 12 throughput, 50% better performance per watt, 60% more throughput per rack, 2x memory, 1.5x storage, and 4x network bandwidth</li>
</ul>

<div class="flex-1 min-h-0 flex gap-8 justify-center items-center text-[7px] mt-4">
    <!-- Table 1 -->
    <div v-click="2" class="h-full text-left text-[11px]">
      <div mb-2>Cloudflare must refresh a share <i>r</i> of its existing capacity (c = 115), to meet a 20% traffic growth target:</div>
      <span font-mono>Capacity increase = 60% × r</span>
      <div mt-1 mb-1>Replacing one-third of the fleet’s capacity with Gen 13 creates:</div>
      <span font-mono>33.3% × 60% = 20% fleet capacity</span>
      <div mt-1 mb-1>The refreshed fleet’s installed capacity becomes:</div>
      <span font-mono>115 × (1 + 20%) = 138</span>
      <div mt-1 mb-1>With a 15% reserve, that supports peak usage of:</div>
      <span font-mono> 138 ÷ 1.15 = 120</span>
      <div mt-1>So, a one-third refresh supports 20% annual peak-usage growth without adding a PoP or reducing headroom</div>
    </div>
    <!-- Table 2 -->
    <table v-click="3" class="h-full border-collapse text-left">
      <thead>
        <tr class="border-b border-gray-600 bg-white/10 font-bold">
          <th class="px-1 py-0.5">Item</th>
          <th class="px-1 py-0.5">Assumption</th>
        </tr>
      </thead>
      <tbody>
        <tr class="border-b border-gray-700/50"><td class="px-1 py-0.5">Number of Gen 12 racks</td><td class="px-1 py-0.5">1,000</td></tr>
        <tr class="border-b border-gray-700/50"><td class="px-1 py-0.5">Racks to refresh</td><td class="px-1 py-0.5">1,000 × 33.3% = 333</td></tr>
        <tr class="border-b border-gray-700/50"><td class="px-1 py-0.5">Gen 13 replacement cost</td><td class="px-1 py-0.5">$250K</td></tr>
        <tr class="border-b border-gray-700/50"><td class="px-1 py-0.5">Deployment overhead</td><td class="px-1 py-0.5">20%</td></tr>
        <tr class="border-b border-gray-700/50"><td class="px-1 py-0.5">Capex</td><td class="px-1 py-0.5">333 × $250,000 × 1.20 = $100M</td></tr>
      </tbody>
    </table>
  </div>
</div>