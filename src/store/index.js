import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

export default new Vuex.Store({
  state: {
    host: "http://localhost:8080/",
    cart: [],
    totalPrice: 0,
  },
  mutations: {
    addProduct(state, product) {
      state.cart.push(product);
    },
    deleteProduct(state, idProdct) {
      let id = idProdct;
      let product = 0;
      //I look for the product, if I find it I break the loop, otherwise I increase the value of the variable "product";
      for (let i = 0; i < state.cart.length; i++) {
        if ( state.cart[i].id === id) {
          break;
        }
        product++;
      }
      //Delete product
      if (product === 0) {
        state.cart.splice(0, 1);
      }
      if (product !== 0) {
        state.cart.splice(product, product)
      }
      
    },
    handlerTotalPrice(state){
      let price = 0;
      state.cart.forEach((e) => {
        price += e.price;
      });
      state.totalPrice = price;
    },
  },
  actions: {
    addProduct(ctx, product){
      ctx.commit("addProduct", product);
    },
    deleteProduct(ctx, idProduct){
      ctx.commit("deleteProduct", idProduct)
    },
    handlerTotalPrice(ctx){
      ctx.commit("handlerTotalPrice")
    },
  },
  modules: {},
});
