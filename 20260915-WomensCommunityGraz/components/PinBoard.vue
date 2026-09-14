<!--
  The Pepe Silvia board: the same six CV steps, as they actually felt from the inside.
  Cards are hand-placed in a 900x458 box (the slide is 980x552). Nothing lines up on
  purpose — the angles are uneven, the sizes vary, and the string crosses itself.

  Pin positions are measured from the DOM after mount rather than calculated, because
  the cards are rotated and auto-height: measuring is the only way the string actually
  lands on the pins instead of near them.
-->
<script setup>
import { ref, onMounted, onUnmounted, nextTick } from 'vue'

// x / y / w = top-left corner and width inside the 900x458 board.
// scrawl = written in marker at 1am. note = a smaller aside.
const cards = [
  { id: 'a', x:   8, y:  38, w: 125, rot:  -7, text: 'Mobile Engineer' },
  { id: 'b', x: 168, y:   4, w:  95, rot:   6, text: 'BORED', scrawl: true },
  { id: 'c', x: 292, y:  28, w: 180, rot:  -3, text: '"is it okay if a backend engineer joins?"' },
  { id: 'd', x: 508, y:   0, w: 145, rot:   5, text: 'said yes to be POLITE', scrawl: true },
  { id: 'e', x: 694, y:  34, w: 165, rot:  -6, text: '…also I didn\'t like the Android guy', note: true },
  { id: 'f', x:  26, y: 158, w: 180, rot:   4, text: '"is it okay if a DevOps engineer joins?"' },
  { id: 'g', x: 248, y: 136, w: 145, rot: -10, text: 'I HATE DEVOPS', scrawl: true, big: true },
  { id: 'h', x: 432, y: 164, w: 175, rot:   3, text: 'wait... that\'s platform engineering' },
  { id: 'i', x: 660, y: 168, w: 150, rot:  -4, text: 'started blogging & giving talks', note: true },
  // Tech Evangelist era — bottom LEFT. A 25% program on the side, still a platform
  // engineer. Kept physically apart from the DevRel cluster, because on a board like
  // this proximity reads as "belongs to", no matter where the string goes.
  { id: 'j', x:  10, y: 276, w: 190, rot:   5, text: 'gave a HORRIBLE talk at Cloud Native Linz' },
  { id: 'k', x: 232, y: 254, w: 155, rot:  -6, text: 'TECH EVANGELIST PROGRAM!!', scrawl: true },
  { id: 'l', x:  14, y: 372, w: 150, rot:   7, text: 'applied anyway. terrified.' },
  { id: 'r', x: 200, y: 386, w: 170, rot:   4, text: 'still a platform engineer, 25% on the side', note: true },

  // Developer Advocate era — bottom RIGHT. The actual role change, and everything
  // that followed it.
  { id: 'q', x: 406, y: 266, w: 160, rot:  -5, text: 'just asked if I could join DevRel' },
  { id: 'm', x: 620, y: 250, w: 170, rot:  -8, text: 'I\'M NOT READY FOR KUBECON', scrawl: true, big: true },
  { id: 'n', x: 408, y: 378, w: 125, rot:   9, text: 'pregnant 🤰', scrawl: true },
  { id: 'o', x: 560, y: 396, w: 125, rot:  -5, text: 'maternity leave', note: true },
  { id: 'p', x: 692, y: 380, w: 180, rot:   6, text: 'CNCF AMBASSADOR???', scrawl: true },
]

// The story in the order it actually happened.
const walk = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'q', 'n', 'm', 'o', 'p']
// The shortcuts that shouldn't exist — including the two identical interview questions.
const strays = [['c', 'f'], ['b', 'g'], ['d', 'q'], ['j', 'm'], ['m', 'p'], ['k', 'r'], ['a', 'h']]

const board = ref(null)
const pins = ref({})
const pts = ref({})

const measure = () => {
  const box = board.value?.getBoundingClientRect()
  if (!box || !box.width) return
  // The whole slide is CSS-scaled, so convert back into the 900-wide board space.
  const scale = box.width / 900
  const next = {}
  for (const [id, el] of Object.entries(pins.value)) {
    if (!el) continue
    const r = el.getBoundingClientRect()
    next[id] = [(r.left + r.width / 2 - box.left) / scale, (r.top + r.height / 2 - box.top) / scale]
  }
  pts.value = next
}

let ro
onMounted(async () => {
  await nextTick()
  measure()
  // Fonts land late and the slide rescales on resize; both move the pins.
  document.fonts?.ready.then(measure)
  ro = new ResizeObserver(measure)
  if (board.value) ro.observe(board.value)
})
onUnmounted(() => ro?.disconnect())

const line = (from, to) => {
  const a = pts.value[from]
  const b = pts.value[to]
  return a && b ? { x1: a[0], y1: a[1], x2: b[0], y2: b[1] } : null
}
const segments = () => {
  const out = []
  for (let i = 0; i < walk.length - 1; i++) {
    const s = line(walk[i], walk[i + 1])
    if (s) out.push({ ...s, main: true })
  }
  for (const [f, t] of strays) {
    const s = line(f, t)
    if (s) out.push({ ...s, main: false })
  }
  return out
}
</script>

<template>
  <div ref="board" class="board">
    <svg class="string" viewBox="0 0 900 458">
      <line
        v-for="(s, i) in segments()"
        :key="i"
        :x1="s.x1" :y1="s.y1" :x2="s.x2" :y2="s.y2"
        :class="s.main ? 'main' : 'stray'"
      />
    </svg>

    <div
      v-for="c in cards"
      :key="c.id"
      class="card"
      :class="{ scrawl: c.scrawl, note: c.note, big: c.big }"
      :style="{ left: c.x + 'px', top: c.y + 'px', width: c.w + 'px', transform: `rotate(${c.rot}deg)` }"
    >
      <span class="pin" :ref="(el) => (pins[c.id] = el)" />
      {{ c.text }}
    </div>
  </div>
</template>

<style scoped>
.board {
  position: relative;
  width: 900px;
  height: 458px;
  margin: 0 auto;
}

.string {
  position: absolute;
  inset: 0;
  width: 100%;
  height: 100%;
  pointer-events: none;
}
.string .main {
  stroke: #d93025;
  stroke-width: 2;
  opacity: 0.85;
}
.string .stray {
  stroke: #d93025;
  stroke-width: 1.5;
  opacity: 0.45;
}

.card {
  position: absolute;
  padding: 0.6rem 0.75rem;
  background: #f4ecd8;
  color: #1a1a1a;
  font-size: 15px;
  font-weight: 700;
  line-height: 1.3;
  text-align: center;
  border-radius: 2px;
  box-shadow: 0 6px 14px rgba(0, 0, 0, 0.5);
}

/* marker, not biro */
.card.scrawl {
  font-family: 'Caveat', 'Bradley Hand', 'Segoe Script', cursive;
  color: #c0392b;
  font-size: 25px;
  line-height: 1.15;
}
.card.scrawl.big {
  font-size: 31px;
}

/* the small asides, on a torn-off corner of something else */
.card.note {
  background: #fdf6b2;
  font-size: 13px;
  font-weight: 600;
  padding: 0.5rem 0.65rem;
}

.pin {
  position: absolute;
  top: -7px;
  left: 50%;
  width: 12px;
  height: 12px;
  margin-left: -6px;
  border-radius: 50%;
  background: #d93025;
  box-shadow: inset 0 -2px 3px rgba(0, 0, 0, 0.4), 0 1px 2px rgba(0, 0, 0, 0.5);
}
</style>
