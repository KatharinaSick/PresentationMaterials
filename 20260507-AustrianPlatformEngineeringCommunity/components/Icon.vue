<script setup>
// Centralized icon registry — change an icon here and it updates everywhere
const iconMap = {
  // Backstage core features
  catalog: 'i-lucide:package',
  scaffolder: 'i-lucide:hammer',
  docs: 'i-lucide:book-open',
  plugins: 'i-lucide:plug',

  // Concepts
  puzzle: 'i-lucide:puzzle',
  target: 'i-lucide:target',
  idea: 'i-lucide:lightbulb',
  brain: 'i-lucide:brain',
  search: 'i-lucide:search',
  refresh: 'i-lucide:refresh-cw',

  // Status / sentiment
  unknown: 'i-lucide:circle-help',
  settings: 'i-lucide:settings',
  hourglass: 'i-lucide:hourglass',
  timer: 'i-lucide:timer',
  ticket: 'i-lucide:ticket',
  smile: 'i-lucide:smile',
  check: 'i-lucide:circle-check',
  cross: 'i-lucide:circle-x',
}

const props = defineProps({
  name: { type: String, required: true },
  size: { type: String, default: '1.1em' },
})
</script>

<template>
  <span
    :class="iconMap[name]"
    :style="{ display: 'inline-block', width: size, height: size, verticalAlign: 'middle' }"
  />
</template>
