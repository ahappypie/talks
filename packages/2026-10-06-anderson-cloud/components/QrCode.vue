<script>
import QrcodeVue from 'qrcode.vue'

export default {
  components: {
    QrcodeVue,
  },
  props: {
    value: { required: true, type: String },
  },
  data() {
    return {
      value: `${window.location.origin}/${this.value}`,
      size: 300,
    }
  },
}
</script>

<template>
  <QrcodeVue :value="value" :size="size" :level="L" :render-as="svg" />
</template>
