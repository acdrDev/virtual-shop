<template>
  <div class="h-screen bg-gray-300">
    <div class="py-12">
      <div
        class="max-w-md mx-auto bg-gray-100 shadow-lg rounded-lg md:max-w-5xl"
      >
        <div class="md:flex">
          <div class="w-full p-4 px-5 py-5">
            <div class="md:grid md:grid-cols-3 gap-2">
              <div class="col-span-2 p-5">
                <h1 class="text-xl font-medium">Carrito de compras</h1>

                <!-- Cards products of the shopping cart -->
                <ProductCart
                  v-for="product in cart"
                  v-bind:key="product.id"
                  :image="host + 'upload/' + product.image"
                  :name="product.title"
                  :description="product.description"
                  :price="product.price"
                  :id="product.id"
                />

                <!-- Footer shopping card-->
                <div
                  class="flex justify-between items-center mt-6 pt-6 border-t"
                >
                  <div class="flex items-center">
                    <router-link to="/categorias"
                      ><i
                        class="fas fa-arrow-left text-sm text-secundary pr-2"
                      ></i>
                      <span class="text-md font-medium text-secundary"
                        >Continuar comprando</span
                      ></router-link
                    >
                  </div>
                  <div class="flex justify-center items-end">
                    <span class="text-sm font-medium text-gray-400 mr-1"
                      >Total:</span
                    >
                    <span class="text-lg font-bold text-gray-800">{{
                      totalPrice
                    }}</span>
                  </div>
                </div>
              </div>

              <!-- Payment section -->
              <div class="p-5 h-80 bg-gray-800 rounded overflow-visible">
                <span class="text-xl font-medium text-gray-100 block pb-3"
                  >Detalles de tarjeta</span
                >
                <div
                  class="overflow-visible flex justify-between items-center"
                ></div>
                <div class="flex justify-center flex-col pt-3">
                  <label class="text-xs text-gray-400"
                    >Nombre en la tarjeta</label
                  >
                  <input
                    type="text"
                    class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4"
                    placeholder="Giga Tamarashvili"
                  />
                </div>
                <div class="flex justify-center flex-col pt-3">
                  <label class="text-xs text-gray-400">Numero de tarjeta</label>
                  <input
                    type="text"
                    class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4"
                    placeholder="**** **** **** ****"
                  />
                </div>
                <div class="grid grid-cols-3 gap-2 pt-2 mb-3">
                  <div class="col-span-2">
                    <label class="text-xs text-gray-400"
                      >Fecha de expiración</label
                    >
                    <div class="grid grid-cols-3 gap-2">
                      <input
                        type="text"
                        class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4"
                        placeholder="mm"
                      />
                      <input
                        type="text"
                        class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4"
                        placeholder="yyyy"
                      />
                    </div>
                  </div>
                  <div>
                    <label class="text-xs text-gray-400">CVV</label>
                    <input
                      type="text"
                      class="focus:outline-none w-full h-6 bg-gray-800 text-white placeholder-gray-300 text-sm border-b border-gray-600 py-4"
                      placeholder="XXX"
                    />
                  </div>
                </div>
                <button
                  class="h-12 w-full bg-primary rounded focus:outline-none text-white"
                >
                  Comprar
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ProductCart from "../components/cards/ProductCart";

//Vuex
import { mapState, mapActions } from "vuex";

export default {
  name: "Cart",
  components: {
    ProductCart,
  },
  created() {
    this.handlerTotalPrice();
  },
  computed: {
    ...mapState(["cart", "host", "totalPrice"]),
  },
  methods: {
    ...mapActions(['handlerTotalPrice']),
  },
};
</script>
