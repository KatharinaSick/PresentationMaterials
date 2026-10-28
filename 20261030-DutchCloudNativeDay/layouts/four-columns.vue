<script setup>
import Footer from 'slidev-theme-underglow/components/footer.vue'
</script>

<template>
  <div class="slidev-layout w-full h-full grid grid-cols-4 gap-x-6">
    <div class="col-span-4">
      <slot />
    </div>
    <div>
      <slot name="col1" />
    </div>
    <div>
      <slot name="col2" />
    </div>
    <div>
      <slot name="col3" />
    </div>
    <div>
      <slot name="col4" />
    </div>
  </div>
  <Footer />
</template>