<template>
  <div class="todo">
    <span class="todo-label">TODO</span>
    <slot />
  </div>
</template>

<style scoped>
.todo {
  width: 100%;
  padding: 0.6rem 1rem;
  margin: 0.75rem 0;
  border-radius: 14px;
  border: 2px solid #f59e0b;
  background: rgba(245, 158, 11, 0.06);
  box-sizing: border-box;
  font-size: 1rem;
  font-weight: 500;
  line-height: 1.25;
  color: inherit;
  display: flex;
  align-items: center;
  gap: 0.6rem;
}

.todo-label {
  font-size: 0.7rem;
  font-weight: 800;
  letter-spacing: 0.08em;
  color: #f59e0b;
  text-transform: uppercase;
  flex-shrink: 0;
}
</style>
