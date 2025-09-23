<script>
import presentations from '../index.json'

export default {
  components: {},
  props: {},
  data() {
    const processed = presentations.map((p) => {
      const parts = p.split('-')
      const name = parts.slice(3).join(' ')
      const date = parts.slice(0, 3).join('-')
      return { slug: p, name: `${date}: ${name}` }
    }).sort()
    return {
      presentations: processed,
    }
  },
}
</script>

<template>
  <div flex flex-col items-start content-start gap-4>
    <a v-for="p in presentations" :key="p" gap-2 :href="`/${p.slug}`">
      <span text-sm underline decoration-dashed decoration-zinc-300>
        {{ p.name }}
      </span>
    </a>
  </div>
</template>
