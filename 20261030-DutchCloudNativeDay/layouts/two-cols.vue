<script setup>
import Footer from 'slidev-theme-underglow/components/footer.vue'
</script>

<template>
  <div class="slidev-layout two-cols w-full h-full grid grid-cols-2 gap-x-6">
    <div class="pr-2">
      <slot />
    </div>
    <div class="pl-2">
      <slot name="right" />
    </div>
  </div>
  <Footer />
</template>

