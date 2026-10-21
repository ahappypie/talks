# Continuous Profiling
<span class="text-xs text-gray-200">10x throughput with runtime telemetry</span>

<div class="grid grid-cols-12 gap-5 mt-3 items-center">

<div class="col-span-5">
  <ul class="text-xs space-y-1 pl-4 my-0">
    <li v-click="1">My company provided real-time financial data to customers, over <strong>1.5M records/second</strong> at peak load</li>
    <li v-click="2">Each copy of the delivery service could only send <strong>25k records/sec</strong></li>
    <li v-click="3">At peak times, we ran 60+ copies of the service, and still experienced instability</li>
    <li v-click="4">What were the options? Scale to even more services, fix the legacy code, or do a complete rewrite</li>
    <li v-click="5">
      But there was a dataset we weren't collecting: 
      <span class="text-blue-600 dark:text-blue-400 font-bold" v-click="6">profiles</span>
    </li>
    <li v-click="7">I discovered the issue wasn't the code, but a misconfiguration</li>
    <li v-click="8">A 6-line fix took an unstable, 25k/sec service to stable at <strong>250k/sec</strong> instantly</li>
    <li v-click="9">This new data resulted in a <strong>90% decrease in the cost</strong> of the service and meant we could hit our customer SLA</li>
  </ul>
</div>

<div class="col-span-7 flex flex-col items-center justify-center p-1" v-click="6">
  <img src="/pyroscope.png" class="w-full max-h-64 object-contain rounded shadow-sm my-1" alt="Pyroscope Flamegraph" />
</div>

</div>