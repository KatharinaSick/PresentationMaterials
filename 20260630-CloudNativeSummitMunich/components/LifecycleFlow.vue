<script setup>
import { ref, onMounted, onUnmounted, nextTick } from 'vue'

const props = defineProps({
  highlight: { type: Array, default: () => [] },
  compact: { type: Boolean, default: false },
})

const PHASES = ['Design', 'Bootstrap', 'Develop', 'Deploy', 'Maintain', 'Deprecate']

const containerEl = ref(null)
const phaseEls = ref({})
const loop = ref(null)
let ro = null

function isHighlighted(phase) {
  return props.highlight.length === 0 || props.highlight.includes(phase)
}

function phaseClass(phase) {
  if (props.highlight.length === 0) return 'lf-phase'
  return isHighlighted(phase) ? 'lf-phase lf-phase--on' : 'lf-phase lf-phase--off'
}

function setRef(el, phase) {
  if (el) phaseEls.value[phase] = el
}

function measure() {
  const c = containerEl.value
  if (!c || c.offsetWidth === 0) return

  const cr = c.getBoundingClientRect()
  const cx = (phase) => {
    const el = phaseEls.value[phase]
    if (!el) return null
    const r = el.getBoundingClientRect()
    return r.left - cr.left + r.width / 2
  }

  const devX = cx('Develop')
  const depX = cx('Deploy')
  const mntX = cx('Maintain')
  if (!devX) return

  // connY: where the horizontal connector sits (below the phase row)
  // box sits below connY with a small gap, so lines never overlap the box
  const connY = 26

  loop.value = {
    W: cr.width,
    H: connY + 4,
    devX, depX, mntX,
    connY,
  }
}

onMounted(() => {
  if (props.compact) return
  ro = new ResizeObserver(measure)
  if (containerEl.value) ro.observe(containerEl.value)
  nextTick(() => {
    measure()
    setTimeout(measure, 150)
  })
})

onUnmounted(() => ro?.disconnect())
</script>

<template>
  <div ref="containerEl" class="lf" :class="{ 'lf--compact': compact }">
    <div class="lf-row">
      <template v-for="(phase, i) in PHASES" :key="phase">
        <span v-if="i > 0" class="lf-sep" :class="{ 'lf-sep--dim': highlight.length > 0 }">→</span>
        <div :ref="el => setRef(el, phase)" :class="phaseClass(phase)">{{ phase }}</div>
      </template>
    </div>

    <svg
      v-if="!compact && loop"
      class="lf-svg"
      :width="loop.W"
      :height="loop.H"
      :viewBox="`0 0 ${loop.W} ${loop.H}`"
    >
      <!-- Down from Deploy -->
      <line :x1="loop.depX" y1="0" :x2="loop.depX" :y2="loop.connY"
            stroke="rgba(255,255,255,0.65)" stroke-width="2.5" />
      <!-- Down from Maintain -->
      <line :x1="loop.mntX" y1="0" :x2="loop.mntX" :y2="loop.connY"
            stroke="rgba(255,255,255,0.65)" stroke-width="2.5" />
      <!-- Horizontal connector from Develop to Maintain -->
      <line :x1="loop.devX" :y1="loop.connY" :x2="loop.mntX" :y2="loop.connY"
            stroke="rgba(255,255,255,0.65)" stroke-width="2.5" />
      <!-- Up to Develop (return path) -->
      <line :x1="loop.devX" y1="8" :x2="loop.devX" :y2="loop.connY"
            stroke="rgba(255,255,255,0.65)" stroke-width="2.5" />
      <!-- Arrowhead pointing up at Develop — polygon, no marker needed -->
      <polygon
        :points="`${loop.devX - 6},14 ${loop.devX + 6},14 ${loop.devX},2`"
        fill="rgba(255,255,255,0.7)"
      />

    </svg>
  </div>
</template>

<style scoped>
.lf {
  width: 100%;
}

.lf-row {
  display: flex;
  align-items: center;
  width: 100%;
}

.lf-phase {
  flex: 1;
  text-align: center;
  padding: 0.55rem 0.4rem;
  border: 1.5px solid rgba(255, 255, 255, 0.35);
  border-radius: 8px;
  font-size: 1rem;
  font-weight: 500;
  background: rgba(255, 255, 255, 0.04);
  transition: opacity 0.3s, border-color 0.3s, background 0.3s, box-shadow 0.3s;
  white-space: nowrap;
}

.lf-phase--on {
  border-color: #01D393;
  background: rgba(1, 211, 147, 0.12);
  box-shadow: 0 0 16px rgba(1, 211, 147, 0.2);
}

.lf-phase--off {
  opacity: 0.2;
}

.lf-sep {
  flex-shrink: 0;
  padding: 0 0.5rem;
  opacity: 0.55;
  font-size: 1.1rem;
  transition: opacity 0.3s;
}

.lf-sep--dim {
  opacity: 0.15;
}

.lf-svg {
  display: block;
  width: 100%;
}

.lf--compact .lf-phase {
  font-size: 0.8rem;
  padding: 0.3rem 0.3rem;
  border-radius: 6px;
}

.lf--compact .lf-sep {
  padding: 0 0.3rem;
  font-size: 0.85rem;
}
</style>
