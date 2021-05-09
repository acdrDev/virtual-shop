import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import './css/tailwind.css'
import VueGlide from 'vue-glide-js'
import 'vue-glide-js/dist/vue-glide.css'
import './css/iconmonstr-iconic-font-1.3.0/css/iconmonstr-iconic-font.css'

Vue.config.productionTip = false
Vue.use(VueGlide)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
