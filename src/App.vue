<script setup>
import { ref } from 'vue'

const contador = ref(0)
</script>

<template>
  <div class="container">
    <h1>Minha SPA Vue</h1>

    <p>
      Aplicação Vue compilada com Vite e servida pelo Nginx.
    </p>

    <div class="card">
      <h2>Contador</h2>

      <p class="counter">
        {{ contador }}
      </p>

      <button @click="contador++">
        Incrementar
      </button>
    </div>
  </div>
</template>

<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #f5f5f5;
}

.container {
  max-width: 800px;
  margin: 100px auto;
  padding: 40px;
  text-align: center;
}

.card {
  margin-top: 40px;
  padding: 30px;
  background: white;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

.counter {
  font-size: 48px;
  font-weight: bold;
}

button {
  padding: 12px 24px;
  border: 0;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
}
</style>