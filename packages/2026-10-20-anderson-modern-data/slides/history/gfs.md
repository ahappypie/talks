# Google File System & MapReduce

<v-clicks>
<ul>

<li>Enter <a href="https://static.googleusercontent.com/media/research.google.com/en//archive/gfs-sosp2003.pdf"><span class="underline decoration-dashed">GFS: A distributed file system (2003)</span></a></li>
<li>Files are split into blocks, tracked in a central metadata system, and distributed to storage nodes</li>
<li><a href="https://static.googleusercontent.com/media/research.google.com/en//archive/mapreduce-osdi04.pdf"><span class="underline decoration-dashed">MapReduce (2004)</span></a> is a parallel processing engine that takes advantage of data locality to increase processing efficiency</li>
<li>In 2004, Google was processing over 3,200 TB every month across 1,000+ nodes</li>
<li>This architecture scales by adding additional <strong><i>commodity</i></strong> hardware, not bigger disks/CPUs, which keeps incremental costs low</li>

</ul>
</v-clicks>