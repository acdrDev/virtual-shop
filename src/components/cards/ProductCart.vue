<template>
  <div class="flex justify-between items-center mt-6 pt-6">
    <div class="flex items-center">
      <img
        :src="this.image"
        width="80"
        height="80"
        class="rounded-full"
      />
      <div class="flex flex-col ml-3">
        <span class="md:text-md font-medium">{{ this.name }}</span>
        <span class="text-xs text-complementary">{{ this.description }}</span>
      </div>
    </div>
    <div class="flex justify-center items-center">
      <div class="pr-8 flex">
        <span class="font-semibold">-</span>
        <input
          type="text"
          class="focus:outline-none bg-gray-100 border h-6 w-8 rounded text-sm px-2 mx-2"
          value="1"
        />
        <span class="font-semibold">+</span>
      </div>
      <div class="pr-8"><span class="text-xs font-medium">${{ this.price }}</span></div>
      <div><i @click="() => {deleteProduct(id); handlerTotalPrice();}" class="fas fa-times text-xl cursor-pointer"></i></div>
    </div>
  </div>
</template>

<script>
//Vuex
import { mapActions } from 'vuex';

export default {
    name: 'ProductCart',
    props: {
      id: Number,
      image: String,
      name: String,
      description: String,
      price: Number
    },
    methods: {
      ...mapActions(['deleteProduct', 'handlerTotalPrice']),
    }
};
</script>