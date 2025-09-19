---
class: py-10
---
# Simple System Design

<div class="mt-8 flex flex-col justify-center items-center">
  <div class="flex flex-wrap items-start content-start gap-4">
    <RenderWhen v-if="$clicks == 0" context="presenter">
        <img w-50 src="/system-design-simple-1.svg" />
        <img w-50 src="/system-design-simple-2.svg" />
        <img w-50 src="/system-design-simple-3.svg" />
        <img w-50 src="/system-design-simple-4.svg" />
        <img w-50 src="/system-design-simple-5.svg" />
    </RenderWhen>
    <div v-click="1" class="flex flex-wrap items-start content-start gap-4">
        <img w-50 src="/system-design-simple-1.svg" />
        <img w-50 src="/system-design-simple-2.svg" />
        <img w-50 src="/system-design-simple-3.svg" />
        <img w-50 src="/system-design-simple-4.svg" />
        <img w-50 src="/system-design-simple-5.svg" />
    </div>
  </div>
</div>

<!-- 
Step through PM prompt
-->