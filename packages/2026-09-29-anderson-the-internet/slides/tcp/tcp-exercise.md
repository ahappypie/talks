---
class: py-10
---
# TCP Delivery

<div grid grid-cols-2 gap-4 h-90>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="1">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:list-numbered text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Ordered
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
            <ul>
              <li v-click="2">Client: <b>DATA</b> <span text-blue>"Approve"</span> <span text-purple>Seq=101</span></li>
              <li v-click="3">Server: <b>ACK</b> <span text-purple>Seq=108</span></li>
              <li v-click="4">Client: <b>DATA</b> <span text-blue>"this"</span> <span text-purple>Seq=108</span></li>
              <li v-click="5">Server: <b>ACK</b> <span text-purple>Seq=112</span></li>
              <li v-click="6">Client: <b>DATA</b> <span text-blue>"message"</span> <span text-purple>Seq=112</span></li>
              <li v-click="7">Server: <b>ACK</b> <span text-purple>Seq=118</span></li>
            </ul>
            <div text-blue>
                <span v-click="3">Approve</span> <span v-click="5">this</span> <span v-click="7">message</span>
            </div>
        </div>
      </div>
    </div>
    <div border="2 solid white/5" rounded-lg overflow-hidden bg="white/5" backdrop-blur-sm h-full v-click="8">
      <div flex items-center bg="white/10" backdrop-blur px-3 py-2 rounded-md>
        <div i-carbon:list-bulleted text-amber-300 text-sm mr-2 />
        <div font-semibold>
          Unordered
        </div>
      </div>
      <div flex items-center px-4 py-3>
        <div flex flex-col gap-3>
          <ul>
              <li v-click="9">Client: <b>DATA</b> <span text-blue>"Approve"</span> <span text-purple>Seq=101</span></li>
              <li v-click="10">Server: <b>ACK</b> <span text-purple>Seq=108</span></li>
              <li v-click="11">Client: <b>DATA</b> <span text-blue>"message"</span> <span text-purple>Seq=112</span></li>
              <li v-click="12">Server: <b text-red>REJECT</b> Expected Seq=108</li>
              <li v-click="13">Client: <b>DATA</b> <span text-blue>"this"</span> <span text-purple>Seq=108</span></li>
              <li v-click="14">Server: <b text-green>ACK</b> <span text-purple>Seq=112</span></li>
              <li v-click="15">Client: <b>DATA</b> <span text-blue>"message"</span> <span text-purple>Seq=112</span></li>
              <li v-click="16">Server: <b>ACK</b> <span text-purple>Seq=118</span></li>
            </ul>
            <div text-blue>
                <span v-click="10">Approve</span> <span v-click="14">this</span> <span v-click="16">message</span>
            </div>
        </div>
      </div>
    </div>
</div>

<!--
Technically, TCP uses a frame buffer that handles duplicate acknowledgement as opposed to rejecting a packet.
-->