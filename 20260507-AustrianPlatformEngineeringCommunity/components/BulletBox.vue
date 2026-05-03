<script setup>
defineProps({
  title: { type: String, required: true },
  bullets: { type: Array, default: () => [] },
  accent: { type: String, default: '#7D1CFE' },
})
</script>

<template>
  <div class="bullet-box" :style="{ borderLeft: `6px solid ${accent}` }">
	<div class="title">{{ title }}</div>
	<ul v-if="bullets.length" class="bullets">
	  <li v-for="(item, i) in bullets" :key="i">{{ item }}</li>
	</ul>
  </div>
</template>

<style scoped>
.bullet-box {
  width: 100%;
  padding: 1rem 1.2rem;
  border-radius: 14px;
  background: rgba(255, 255, 255, 0.04);
  box-sizing: border-box;
}

.title {
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1.3;
  margin-bottom: 0.55rem;
}

.bullets {
  margin: 0;
  padding-left: 1.15rem;
  font-size: 1.2rem;
  line-height: 1.5;
  opacity: 0.9;
}

.bullets li + li {
  margin-top: 0.3rem;
}
</style>


