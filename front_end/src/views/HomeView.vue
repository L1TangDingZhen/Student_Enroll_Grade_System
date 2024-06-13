<template>
  <div class="home-view">
    <h1>Hello</h1>
    <router-link to="/spin">
      <input type="button" value="Choose what eat today">
    </router-link>

    <router-link to="/login">
      <input type="button" value="Student_Enroll_Grade_System">
    </router-link>

    <a href="https://github.com/L1TangDingZhen/Dotnet_Order_System" target="_blank">
      <button class="link-button">Dotnet Order System</button>
    </a>

    <p>{{ currentTime }}</p>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref, onMounted } from "vue";

export default defineComponent({
  name: "HomeView",
  setup() {
    const currentTime = ref<string>("");

    const updateTime = () => {
      const now = new Date();
      currentTime.value = now.toLocaleString();
    };

    // 每秒更新一次当前时间
    onMounted(() => {
      updateTime();
      setInterval(updateTime, 1000);
    });

    return {
      currentTime,
    };
  },
});
</script>

<style scoped>
.home-view {
  background-color: #111;
  color: white;
  padding: 20px;
  border-radius: 10px;
}

input[type="button"] {
  display: block;
  background-color: #444;
  margin-bottom: 10px;
  color: white;
  border: none;
  padding: 10px;
  cursor: pointer;
  border-radius: 5px;
}

input[type="button"]:hover {
  background-color: #555;
}
</style>
