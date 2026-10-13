---
class: py-10
---
# Unit Testing Anti Patterns

<div v-click="1">
```typescript
function sum(a: Number, b: Number): Number {
    return a + b;
}
```
<div v-click="2" flex items-center mt-2><div class="i-carbon:warning-hex" text-red-400 text-sm mr-1/><span text-xs>Too simple</span></div>
</div>

<div v-click="3" mt-4>
```typescript
import { pow } from 'Math';
function square(base: Number): Number {
    return pow(base, 2);
}
```
<div v-click="4" flex items-center mt-2><div class="i-carbon:warning-hex" text-red-400 text-sm mr-1/><span text-xs>Test should be encapsulated in the library</span></div>
</div>

<div v-click="5" mt-4>
```typescript
function reverse(s: String): String {
    let r = '';
    for(let i = s.length - 1; i >= 0; i--) {
        r += s[i]
    }
    return r;
}
```
<div v-click="6" flex items-center mt-2><div class="i-carbon:warning-hex" text-red-400 text-sm mr-1/><span text-xs>Should be using library functions</span></div>
</div>

<!--
Code is in Typescript - TS does not have a library `String.reverse` function, for some reason.

So what should you unit test?
-->