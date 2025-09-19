---
layout: intro
class: px-24
---

<div flex items-center justify-center>
  <div v-click flex flex-col gap-2 items-center justify-center transition duration-500 ease-in-out :class="$clicks < 1 ? 'translate-x--20 opacity-0' : 'translate-x-0 opacity-100'">
    <div flex items-center gap-6>
      <div i-carbon:product inline-block text-6xl /> <span text-4xl text="[#5791f7]">Requirements</span>
    </div>
  </div>
  <div
    v-after pl-15 pr-15 transition duration-500 ease-in-out
    :class="$clicks < 1 ? 'scale-80' : 'scale-100'"
  >
    <div i-ri:arrow-up-s-fill text-8xl rotate-90/>
  </div>
  <div
    v-after flex flex-col gap-2 items-center justify-center transition duration-500 ease-in-out
    :class="$clicks < 1 ? 'translate-x-20 opacity-0' : 'translate-x-0 opacity-100'"
  >
    <div flex items-center gap-6>
      <div i-carbon:network-4 inline-block text-6xl /> <span text-4xl text="[#91f58c]">Systems</span>
    </div>
  </div>
</div>

<!-- 
Today is about process
-->