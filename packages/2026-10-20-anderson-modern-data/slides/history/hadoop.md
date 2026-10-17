<h1>The Open Source Revolution</h1>
<div class="grid grid-cols-12 gap-4 items-center">

<div class="col-span-8">
  <ul class="text-sm pl-4">
    <li>Google kept GFS and MapReduce proprietary as competitive moats</li>
    <li v-click="1">Yahoo built an open web crawler (Nutch) modeled directly on Google's papers</li>
    <li v-click="2">In 2006, the distributed file system and compute engine were spun out as a standalone project: <strong text-yellow v-click="3">Apache Hadoop</strong></li>
    <li v-click="4">HDFS + MapReduce quickly became the standard for internet scale data:
      <ul class="pl-4 mt-1 space-y-0.5">
        <li><strong>Facebook, Twitter & LinkedIn:</strong> Social graph analytics, <em>Friends of Friends/People You May Know</em></li>
        <li><strong>Netflix & Amazon:</strong> Customer recommendation engines</li>
      </ul>
    </li>
  </ul>
</div>

<div class="col-span-4 flex flex-col items-center justify-center p-2" v-click="3">
  <img src="/hadoop.jpg" class="h-72 w-auto object-contain my-1" />
</div>

</div>

<div class="mt-3 p-2.5 text-center max-w-xl mx-auto">
  <div class="text-sm font-medium m-0" v-click="5">
    <div mb-1>There's a bottleneck: MapReduce writes every intermediate step to physical disk</div>
    <div mb-1 v-click="6">Disks are limited in how fast they can read/write</div>
    <div class="font-semibold" v-click="7">How do we go faster?</div>
  </div>
</div>