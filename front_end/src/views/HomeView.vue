<template>
  <div class="home-view">
    <h1>Hello</h1>
    <div>
      <router-link to="/spin">
        <button class="custom-button">Choose what eat today</button>
      </router-link>
    </div>
    <div>
      <router-link to="/login">
        <button class="custom-button">Student_Enroll_Grade_System</button>
      </router-link>
    </div>
    <div>
      <a href="https://github.com/L1TangDingZhen/Dotnet_Order_System" target="_blank">
        <button class="custom-button">Dotnet Order System</button>
      </a>
    </div>

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

.custom-button {
  display: block;
  width: 100%; /* 使按钮占据整个父容器的宽度 */
  background-color: #444;
  margin-bottom: 10px;
  color: white;
  border: none;
  padding: 10px;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  box-sizing: border-box; /* 包括填充和边框在内的宽度计算 */
}

.custom-button:hover {
  background-color: #555;
}
</style>
