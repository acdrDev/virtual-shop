import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    host: "http://localhost:8080/",
    cart: [{
        "id": 27,
        "title": "Yuca",
        "price": 7000,
        "description": "libra",
        "image": "291.png",
        "categoria": "verduras y frutas"
    },
    {
        "id": 28,
        "title": "Guayaba",
        "price": 1000,
        "description": "libra",
        "image": "propiedades-de-la-guayaba-60127dbf2d012.jpg",
        "categoria": "verduras y frutas"
    }]
  },
  mutations: {
  },
  actions: {
  },
  modules: {
  }
})
