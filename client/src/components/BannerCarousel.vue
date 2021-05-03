<template>
  <div class="w-screen bg-primary h-80 max-h-80" id="carousel">
   <vue-glide perView="1">
      <vue-glide-slide>
        <img src="../assets/logo.png" alt="">
      </vue-glide-slide>
    </vue-glide>
  </div>
</template>

<script>
//Carousel craeted with Vue-Glide for most information visit the page https://antonreshetov.github.io/vue-glide/
import { Glide, GlideSlide } from 'vue-glide-js';

export default {
  name: "BannerCarousel",
  components: {
    [Glide.name]: Glide,
    [GlideSlide.name]: GlideSlide
  }
};
</script>
