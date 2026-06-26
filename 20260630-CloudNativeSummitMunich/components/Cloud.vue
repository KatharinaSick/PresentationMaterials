<script setup>
import { computed } from 'vue'

const props = defineProps({
  top: { type: String, default: undefined },
  right: { type: String, default: undefined },
  bottom: { type: String, default: undefined },
  left: { type: String, default: undefined },
  width: { type: String, default: '220px' },
  height: { type: String, default: '120px' },
  color: { type: String, default: 'rgba(255, 255, 255, 0.18)' },
  opacity: { type: [Number, String], default: 1 },
  rotate: { type: [Number, String], default: 0 },
  flipX: { type: Boolean, default: false },
  blur: { type: String, default: '0px' },
  zIndex: { type: [Number, String], default: 0 },
  textColor: { type: String, default: '#ffffff' },
})

const wrapperStyle = computed(() => {
  const rotate = typeof props.rotate === 'number' ? `${props.rotate}deg` : props.rotate
  const scaleX = props.flipX ? '-1' : '1'

  return {
    top: props.top,
    right: props.right,
    bottom: props.bottom,
    left: props.left,
    width: props.width,
    height: props.height,
    opacity: String(props.opacity),
    zIndex: String(props.zIndex),
    filter: props.blur !== '0px' ? `blur(${props.blur})` : undefined,
    transform: `rotate(${rotate}) scaleX(${scaleX})`,
  }
})

const contentStyle = computed(() => ({
  color: props.textColor,
}))

const partStyle = computed(() => ({
  background: props.color,
}))
</script>

<template>
  <div class="cloud" :style="wrapperStyle" :aria-hidden="$slots.default ? undefined : 'true'">
    <div class="cloud-part cloud-back" :style="partStyle"></div>
    <div class="cloud-part cloud-left" :style="partStyle"></div>
    <div class="cloud-part cloud-right" :style="partStyle"></div>
    <div class="cloud-part cloud-base" :style="partStyle"></div>
    <div v-if="$slots.default" class="cloud-content" :style="contentStyle">
      <slot />
    </div>
  </div>
</template>

<style scoped>
.cloud {
  position: absolute;
  pointer-events: none;
}

.cloud-content {
  position: absolute;
  inset: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 100%;
  padding: 0 18%;
  text-align: center;
  font-size: 1.5rem;
  font-weight: 400;
  line-height: 1.2;
  z-index: 1;
}

.cloud-part {
  position: absolute;
}

.cloud-back {
  width: 30%;
  height: 48%;
  left: 14%;
  top: 28%;
  border-radius: 999px;
}

.cloud-left {
  width: 32%;
  height: 54%;
  left: 28%;
  top: 12%;
  border-radius: 999px;
}

.cloud-right {
  width: 34%;
  height: 46%;
  left: 50%;
  top: 22%;
  border-radius: 999px;
}

.cloud-base {
  width: 68%;
  height: 42%;
  left: 18%;
  top: 44%;
  border-radius: 999px;
}
</style>



