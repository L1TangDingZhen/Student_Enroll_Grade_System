import { createRouter, createWebHistory } from 'vue-router'
import Login from '../views/Login.vue'
import My from '../views/My.vue'
import Grade from '../views/Grade.vue'
import Course from '../views/Course.vue'
import Enroll from '../views/Enroll.vue'
import Axios from 'axios'
import Register from '../views/Register.vue'
// const API_URL = 'http://127.0.0.1:8000/api'

// const axioInstance = Axios.create({
//   withCredentials: true
// })

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/',
      name: 'home',
      component: Login
    },
    {
      path: '/music',
      name: 'music',
      component: () => import('../views/Music.vue')
    },
    {
      path: '/login',
      name: 'login',
      component : Login
    },
    {
      path: '/my',
      name: 'my',
      component : My
    },
    {
      path: '/grade',
      name: 'grade',
      component : Grade
    },
    {
      path: '/course',
      name: 'course',
      component : Course
    },
    {
      path: '/enroll',
      name: 'enroll',
      component : Enroll
    },
    {
      path: '/register',
      name: 'register',
      component : Register
    }
  ]
})

export default router
