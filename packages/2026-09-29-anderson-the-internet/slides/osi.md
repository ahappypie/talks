---
class: py-10
---
# Open Systems Interconnection (OSI) Model
The standard for computer systems to communicate with each other

<div class="h-99 flex flex-col">
    <div class="flex-1 min-h-0 grid grid-cols-[1fr_2fr] grid-rows-7 gap-2 mt-2">
    <!-- Row 7 -->
    <div v-click="13" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-red [mask-image:url(/osi/L7.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" />
    </div>
    <div v-click="14" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-red [mask-image:url(/osi/L7-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" />
    </div>
    <!-- Row 6 -->
    <div v-click="11" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-orange [mask-image:url(/osi/L6.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <div v-click="12" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-orange [mask-image:url(/osi/L6-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <!-- Row 5 -->
    <div v-click="9" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-yellow [mask-image:url(/osi/L5.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <div v-click="10" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-yellow [mask-image:url(/osi/L5-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <!-- Row 4 -->
    <div v-click="7" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-green [mask-image:url(/osi/L4.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" />
    </div>
    <div v-click="8" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-green [mask-image:url(/osi/L4-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" />
    </div>
    <!-- Row 3 -->
    <div v-click="5" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-blue [mask-image:url(/osi/L3.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <div v-click="6" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-blue [mask-image:url(/osi/L3-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <!-- Row 2 -->
    <div v-click="3" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-indigo [mask-image:url(/osi/L2.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <div v-click="4" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-indigo [mask-image:url(/osi/L2-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <!-- Row 1 -->
    <div v-click="1" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-violet [mask-image:url(/osi/L1.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
    <div v-click="2" class="min-h-0 flex items-center justify-center">
      <div class="w-full h-full bg-violet [mask-image:url(/osi/L1-desc.svg)] [mask-size:contain] [mask-repeat:no-repeat] [mask-position:left_center]" :class="$clicks > 14 ? 'bg-zinc transition duration-500 ease-in-out' : ''"/>
    </div>
  </div>
</div>
<div v-click="15"/>