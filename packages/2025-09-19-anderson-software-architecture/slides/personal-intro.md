---
layout: intro
---
<div flex items-center gap-3>
    <div flex flex-col items-start transition duration-500 ease-in-out min-w-60>
        <img src="https://avatars.githubusercontent.com/u/2286880" w-40 h-40 rounded-full object-cover mb-5>
        <span font-semibold text-3xl>Brian</span>
        <div>
            <div>
                <span class="opacity-70 text-xs">
                    Software Architect + <br>
                    Data, Infrastructure & Platform Engineer
                </span>
            </div>
            <a flex items-center gap-2 mt-4 text-zinc-300 decoration-zinc-300 op-80 hover="op-100" href="https://github.com/ahappypie" target="_blank">
                <div class="i-devicon:github?mask text-xl text-zinc-300" />
                <span text-sm underline decoration-dashed font-mono decoration-zinc-300>ahappypie</span>
            </a>
            <a flex items-center gap-2 mt-4 text-zinc-300 decoration-zinc-300 op-80 hover="op-100" href="https://linkedin.com/in/bbagdasarian/" target="_blank">
                <div class="i-carbon:logo-linkedin text-xl text-zinc-300" />
                <span text-sm underline decoration-dashed font-mono decoration-zinc-300>bbagdasarian</span>
            </a>
        </div>
    </div>
    <div flex-1 />
    <div flex flex-col gap-8>
        <div mb-4 v-click="1">
            <div mb-4>
                <span text-2xl>My Role</span>
            </div>
            <div flex flex-col items-start content-start gap-4 transition duration-500 ease-in-out>
                <div gap-2 w-fit h-fit v-click="4">Software Engineering</div>
                <div gap-2 w-fit h-fit v-click="3" :class="$clicks > 4 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Software Development</div>
                <div gap-2 w-fit h-fit v-click="2" :class="$clicks > 4 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Computer Science</div>
            </div>
        </div>
        <div mb-4 v-click="6">
            <div mb-4>
                <span text-2xl>My Responsibility</span>
            </div>
            <div flex flex-wrap items-start content-start gap-4 transition duration-500 ease-in-out>
                <div flex items-center gap-2 w-fit h-fit v-click="7" :class="$clicks > 7 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''">Data Engineering</div>
                <div flex items-center gap-2 w-fit h-fit v-click="8" :class="$clicks > 8 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''"><div i-ri:arrow-up-s-fill rotate-270/>Platform Engineering</div>
                <div flex items-center gap-2 w-fit h-fit v-click="9" :class="$clicks > 9 ? 'text-zinc-600 transition duration-500 ease-in-out' : ''"><div i-ri:arrow-up-s-fill rotate-270/>Infrastructure</div>
                <div flex items-center gap-2 w-fit h-fit v-click="10"><div i-ri:arrow-up-s-fill rotate-270/>Software Architecture</div>
            </div>
        </div>
    </div>
</div>

<!-- 
My layered approach to industry

Why can't I call myself engineer? Any Canadians?
-->