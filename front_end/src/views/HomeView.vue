<template>
  <div class="home-view">
    <h1>hello</h1>
    <router-link to="/login">
      <input type="button" value="Student_Enroll_Grade_System">
    </router-link>
    <!-- 显示当前时间 -->
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
  background-color: #444;
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
