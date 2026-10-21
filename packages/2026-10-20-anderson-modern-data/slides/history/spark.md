# In-Memory Computing

<div class="grid grid-cols-12 gap-4 mt-2 items-start">

<div class="col-span-7">
  <ul class="text-sm space-y-2 pl-4 my-0">
    <li>
      The Netflix Data Prize ran for several years to create the best possible customer recommendation algorithm, and award $1M to the winner
    </li>
    <li v-click="1">
      Born at UC Berkeley's AMPLab in 2009 as part of a larger submission, Apache Spark is a general-purpose distributed compute engine designed to eliminate MapReduce's bottlenecks
    </li>
    <li v-click="2">
      It holds intermediate data in memory and only spills to disk when memory limits are reached
    </li>
    <li v-click="3">
      Delivers up to a <strong>100x</strong> performance increase in some workloads, and is at least 10x faster in most
    </li>
    <li v-click="4">
      Today, Spark is the industry standard for data transformation and foundation for modern machine learning pipelines
    </li>
  </ul>
</div>

<!-- Right Column: Scale & Commercialization (5 cols) -->
<div class="col-span-5 space-y-2">

  <div v-click="5" class="p-2.5">
    <div class="text-[11px] tracking-wider font-bold">Massive Scale</div>
    <div class="text-base font-bold mt-0.5">Uber: 120,000+ CPU Cores</div>
    <div class="text-[12px] leading-tight mt-0.5">
      Uber's Data Platform processes petabytes of data daily for dispatch, real-time pricing, and analytics
    </div>
  </div>

  <div v-click="6" class="p-2.5">
    <div class="text-[11px] tracking-wider font-bold">Commercialization</div>
    <div class="text-base font-bold mt-0.5">Databricks: $188B Valuation (Series L)</div>
    <div class="text-[12px] leading-tight mt-0.5">
      Founded by Spark's creators, a managed data platform around Spark and its open source ecosystem
    </div>
  </div>

</div>

</div>
