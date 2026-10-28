<script setup>
import { computed } from 'vue'

const props = defineProps({
  // Border accent color — defaults to the theme primary
  accent: {
    type: String,
    default: '#7D1CFE',
  },
  // 'left' = colored left border bar (default), 'full' = full border all around
  variant: {
    type: String,
    default: 'left',
  },
  // Align slot content: 'left' | 'center'
  align: {
    type: String,
    default: 'left',
  },
})

const boxStyle = computed(() => ({
  textAlign: props.align,
  ...(props.variant === 'left' ? { borderLeft: `6px solid ${props.accent}` } : {}),
  ...(props.variant === 'full' ? { border: `2px solid ${props.accent}` } : {}),
}))
</script>

<template>
  <div class="box" :style="boxStyle">
    <slot />
  </div>
</template>

<style scoped>
.box {
  width: 100%;
  padding: 0.9rem 1rem;
  margin: 1rem 0;
  border-radius: 14px;
  background: rgba(255, 255, 255, 0.04);
  box-sizing: border-box;
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1.25;
  color: inherit;
}
</style>

