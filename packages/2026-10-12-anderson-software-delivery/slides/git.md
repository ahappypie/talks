---
class: py-10
---
# Git Version Control

<div class="mt-8 flex flex-col justify-center items-center">
  <div v-click="1" class="flex items-start content-start items-center gap-4">
```mermaid {theme: 'base'}
---
title: Linear
---
gitGraph
   commit
   commit
   commit
```
  </div>
    <div v-click="2" class="flex items-start content-start items-center gap-4 mt-8">
```mermaid {theme: 'base', scale: '1.2'}
---
title: Branching
---
gitGraph
   commit
   commit
   branch 'feature/A'
   checkout 'feature/A'
   commit
   commit
   checkout main
   commit
   checkout 'feature/A'
   merge main
   checkout main
   merge 'feature/A' tag:'v1.2'
   commit
```
    </div>
</div>
