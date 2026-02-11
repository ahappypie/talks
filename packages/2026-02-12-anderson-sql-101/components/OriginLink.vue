<script>
export default {
  components: {},
  props: {
    value: { required: true, type: String },
  },
  data() {
    return {
      value: `${window.location.origin}/${this.value}`,
    }
  },
}
</script>

<template>
  <span>{{ value }}</span>
</template>
