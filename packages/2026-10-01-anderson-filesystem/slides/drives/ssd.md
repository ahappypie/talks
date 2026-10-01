<h1>Solid State Drives</h1>

<div class="h-full flex flex-col">
  <div class="flex-1 min-h-0 grid grid-cols-3 gap-4 items-start mt-4">
    <div v-click="1">
        2.5" SSD
        <div class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/drives/samsung_840.jpeg" />
        </div>
    </div>
    <div v-click="2">
        iPhone 18 SoC
        <div class="h-full flex items-center justify-center min-h-0">
          <img class="max-h-full max-w-full object-contain" src="/drives/iphone18.jpg" />
        </div>
    </div>
    <div>
        <div class="h-full flex items-center justify-center min-h-0">
          <ul>
            <li v-click="3">Cost: <span text-green>$26/TB</span> (inflation adjusted)</li>
            <li v-click="4">Latency: 15 µs</li>
            <li v-click="5">A <b>333x</b> improvement</li>
            <li font-mono v-click="6">HDD = 5W × 100s = 500J</li>
            <li font-mono v-click="7">SSD = 2W × 1s = 2J</li>
            <li v-click="8">A <b>250x</b> improvement in energy use per operation</li>
          </ul>
        </div>
    </div>
  </div>
</div>