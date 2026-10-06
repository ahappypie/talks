# Business Use: Fly.io
<v-clicks text-sm depth="2">

* Fly.io is an infrastructure provider (a "neo-cloud") that utilizes a custom runtime on bare metal hardware
* It replaces heavy virtual machines with lightweight **microVMs** and routes users to compute in their local metro:
  * User in Los Angeles → `lax` datacenter (~5ms latency)
  * User in London → `lhr` datacenter (~10ms latency)
  * User in Tokyo → `nrt` datacenter (~8ms latency)
  * Compare to traditional clouds, where all users might route to a single region like `us-east-1`, incurring 150ms+ round trips
* Abstracts multi-region systems into a single command, providing customers a latency advantage without major overhead
* Apps automatically scale down to zero compute when idle, increasing server utilization, and decreasing Fly's cost
* Raised $25M Series D in July 2026 at $475M valuation, on $15-20M ARR, ~ **25-30x** multiple

</v-clicks>