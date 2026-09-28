---
class: py-10
---
# Domain Name System (DNS)

<code block whitespace-pre-wrap>
<div mb-8>
    <span text-color-red>https://</span><span text-color-yellow>anderson</span>.<span text-color-blue>ucla</span>.<span text-color-green>edu</span>/<span text-color-indigo>degrees</span>
</div>
<div v-click="1" mb-2 :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">
    <span text-color-red :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">https://</span> - Protocol
</div>
<div v-click="2" mb-2 :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">
    <span text-color-yellow :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">anderson</span> - Subdomain
</div>
<div v-click="3" mb-2 :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">
    <span text-color-blue :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">ucla</span> - Second-Level Domain
</div>
<div v-click="4" mb-2 :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">
    <span text-color-green :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">edu</span> - Top-Level Domain
</div>
<div v-click="5" mb-2>
    <span text-color-blue>ucla</span>.<span text-color-green>edu</span> - Registered Domain (aka Domain Name)
</div>
<div v-click="6" mb-2 :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">
    <span text-color-indigo :class="$clicks > 6 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">degrees</span> - Path
</div>
<div v-click="7"></div>
</code>