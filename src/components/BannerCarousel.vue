<template>
  <div class="h-96" id="carousel">
    <vue-glide :perView="1">
      <vue-glide-slide>
        <div class="h-96 w-full bg-cover bg-no-repeat bg-center" style='background-image: url("https://cdn.pixabay.com/photo/2016/10/25/13/16/pumpkin-1768857_960_720.jpg");'></div>
      </vue-glide-slide>
      <vue-glide-slide>
        <div class="h-96 w-full bg-cover bg-no-repeat bg-center" style='background-image: url("https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467_960_720.jpg");'></div>
      </vue-glide-slide>
    </vue-glide>
  </div>
</template>

<script>
//Carousel craeted with Vue-Glide for most information visit the page https://antonreshetov.github.io/vue-glide/
import { Glide, GlideSlide } from "vue-glide-js";

export default {
  name: "BannerCarousel",
  components: {
    [Glide.name]: Glide,
    [GlideSlide.name]: GlideSlide,
  },
};
</script>

<style>

</style>