<script setup lang="ts">
import { computed } from 'vue'

/**
 * Working memory as a fixed budget, split into the three cognitive load types.
 * Values are percentages and the widths animate. Labels and caption switch
 * instantly - animating text made every update flicker.
 */
const props = defineProps({
  intrinsic: { type: Number, default: 0 },
  extraneous: { type: Number, default: 0 },
  germane: { type: Number, default: 0 },
  caption: { type: String, default: '' },
})

// Whatever the three types don't claim is capacity that simply went unused.
// It is drawn as an explicit hatched segment rather than left blank, because
// blank space reads as relief and the whole point is that it is waste.
const unused = computed(() => {
  const rest = 100 - props.intrinsic - props.extraneous - props.germane
  return rest > 0.5 ? rest : 0
})

// A segment keeps its label inside the bar only if the word actually fits;
// otherwise the label is placed underneath so it never clips or disappears.
const segments = computed(() => {
  const defs = [
    { label: 'Intrinsic', width: props.intrinsic, cls: 'seg-intrinsic', fitsAt: 14 },
    { label: 'Extraneous', width: props.extraneous, cls: 'seg-extraneous', fitsAt: 20 },
    { label: 'Germane', width: props.germane, cls: 'seg-germane', fitsAt: 16 },
  ]

  let offset = 0
  return defs.map((d) => {
    const seg = { ...d, offset, center: offset + d.width / 2, inside: d.width >= d.fitsAt }
    offset += d.width
    return seg
  })
})
</script>

<template>
  <div class="load-bar">
    <div class="load-bar-track">
      <div
        v-for="seg in segments"
        :key="seg.label"
        class="load-bar-seg"
        :class="seg.cls"
        :style="{ width: seg.width + '%' }"
      >
        <span v-if="seg.inside">{{ seg.label }}</span>
      </div>
      <div
        class="load-bar-seg seg-unused"
        :style="{ width: unused + '%' }"
      >
        <span v-if="unused >= 14">Unused</span>
      </div>
    </div>

    <div class="load-bar-outside">
      <span
        v-for="seg in segments.filter((s) => s.width > 0 && !s.inside)"
        :key="seg.label"
        class="load-bar-outside-label"
        :style="{ left: seg.center + '%' }"
      >{{ seg.label }}</span>
    </div>

    <div class="load-bar-caption">
      <span v-if="caption">{{ caption }}</span>
    </div>
  </div>
</template>

<style scoped>
.load-bar {
  width: 100%;
}

.load-bar-track {
  position: relative;
  display: flex;
  width: 100%;
  height: 5.5rem;
  border-radius: 0.75rem;
  overflow: hidden;
  border: 2px solid rgba(255, 255, 255, 0.25);
  background: rgba(255, 255, 255, 0.04);
}

.load-bar-seg {
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  white-space: nowrap;
  /* Only the geometry animates. Text snaps - fading it was the flicker. */
  transition: width 700ms cubic-bezier(0.4, 0, 0.2, 1);
}

.load-bar-seg span {
  font-size: 1.1rem;
  font-weight: 700;
  letter-spacing: 0.06em;
  text-transform: uppercase;
}

/* The problem itself: legitimate, unavoidable, neutral. */
.seg-intrinsic {
  background: rgba(255, 255, 255, 0.18);
}

/* Everything in the way. Flat and hostile - a gradient reads as decorative. */
.seg-extraneous {
  background: var(--slidev-theme-color-accent);
}

/* Actual learning: the warm, sunny side of the palette. */
.seg-germane {
  background: var(--slidev-theme-color-primary);
}

/* Capacity nobody spent. Hatched, not empty - absence you can see. */
.seg-unused {
  background: repeating-linear-gradient(
    45deg,
    rgba(255, 255, 255, 0.07),
    rgba(255, 255, 255, 0.07) 6px,
    transparent 6px,
    transparent 14px
  );
}

.seg-unused span {
  opacity: 0.55;
}

/* Labels for segments too narrow to hold their own word. */
.load-bar-outside {
  position: relative;
  height: 1.75rem;
  margin-top: 0.5rem;
}

.load-bar-outside-label {
  position: absolute;
  top: 0;
  transform: translateX(-50%);
  white-space: nowrap;
  font-size: 0.95rem;
  font-weight: 700;
  letter-spacing: 0.06em;
  text-transform: uppercase;
  opacity: 0.85;
}

.load-bar-caption {
  height: 3rem;
  margin-top: 1rem;
  text-align: center;
  font-size: 1.6rem;
  opacity: 0.85;
}
</style>
