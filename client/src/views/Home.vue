<template>
  <div class="home">
    <Banner/>

    <!-- Information -->
    <section class="w-7/12 h-48 max-h-48 grid grid-cols-2 gap-x-5 m-auto mt-8">
      <div class="flex justify-between w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="">
        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime.</p>
      </div>
      <div class="flex justify-between w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="">
        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime.</p>
      </div>
    </section>
    <!-- Footer component -->
    <Footer/>
  </div>
</template>

<script>
// @ is an alias to /src
import Banner from '@/components/BannerCarousel.vue'
import Footer from '@/components/Footer.vue'

export default {
  name: 'Home',
  components: {
    Banner,
    Footer
  }
}
</script>
