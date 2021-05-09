<template>
  <div
    class="h-80 w-60 bg-white rounded-xl overflow-hidden border"
    :style="shadowHandler()"
  >
    <div class="h-44 bg-cover" :style="imageHandler()"></div>
    <div class="px-3 flex flex-col">
      <a href="#" class="font-bold mt-2 mb-1 text-md">{{ title }}</a>
      <span class="text-primary">${{ price }}</span>
      <p class="font-light text-sm text-justify mt-1">
        {{ description }}
      </p>
      <button class="w-full border-2 py-1 mt-2 hover:bg-primary hover:text-white border-primary text-primary rounded-md">Agregar al carrito</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "CardProducts",
  props: {
    title: String,
    price: Number,
    description: String,
    image: String,
    shadow: Boolean,
  },
  methods: {
    imageHandler() {
      return `background-image: url('${this.image}')`;
    },
    shadowHandler() {
      if (this.shadow) {
        return `-webkit-box-shadow: 17px 19px 30px 1px rgba(0,0,0,0.39);
                -moz-box-shadow: 17px 19px 30px 1px rgba(0,0,0,0.39);
                box-shadow: 17px 19px 30px 1px rgba(0,0,0,0.39);`;
      }
    },
  },
};
</script>