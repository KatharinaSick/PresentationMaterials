<script setup>
defineProps({
  name: { type: String, required: true },
  company: { type: String, required: true },
  role: { type: String, required: true },
  accent: { type: String, default: '#7D1CFE' },
  image: { type: String, default: '' },
})
</script>

<template>
  <div class="speaker-card" :style="{ border: `2px solid ${accent}` }">
    <img v-if="image" class="avatar-image" :src="image" :alt="name" />
    <div v-else class="avatar">👤</div>
    <h3 class="name">{{ name }}</h3>
    <div class="company" :style="{ color: accent }">{{ company }}</div>
    <div class="role">{{ role }}</div>
  </div>
</template>

<style scoped>
.speaker-card {
  padding: 2em;
  border-radius: 12px;
  flex: 1;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-align: center;
  gap: 1em;
  max-width: 300px;
  min-height: 280px;
}
.avatar {
  font-size: 3em;
}

.avatar-image {
  width: 110px;
  height: 110px;
  border-radius: 999px;
  object-fit: cover;
  object-position: center;
}

.name {
  margin: 0.5em 0;
  font-size: 1.5em;
}
.company {
  font-weight: bold;
}
.role {
  font-size: 0.9em;
  opacity: 0.9;
}
</style>

