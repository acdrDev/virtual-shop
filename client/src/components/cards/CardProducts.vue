<template>
  <div class="h-80 w-64 bg-white rounded-xl overflow-hidden border border-2">
    <div class="h-44 bg-cover" :style="imageHandler()"></div>
    <div class="px-3">
      <h6 class="font-bold my-2">{{ title }}</h6>
      <span class="text-red-700">${{ price }}</span>
      <p class="font-light text-sm text-justify mt-2">
        {{ description }}
      </p>
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
  },
  methods: {
    imageHandler() {
      return `background-image: url('${this.image}')`;
    },
  },
};
</script>