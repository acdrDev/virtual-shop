<template>
  <div class="home">
    <Banner />

    <!-- Information -->
    <section class="w-7/12 h-48 max-h-48 grid grid-cols-2 gap-x-5 m-auto my-8">
      <div class="flex flex-col w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="" />
        <p class="text-justify">100% Colombianos</p>
      </div>
      <div class="flex flex-col w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="" />
        <p class="text-justify">Atención 24/7</p>
      </div>
    </section>

    <!-- New products -->
    <section class="bg-primary mb-8 py-8 px-10">
      <h3 class="font-bold text-4xl text-white mb-6">Ultimas Publicaciones</h3>
      <vue-glide :perView="4" v-if="products.length">
        <vue-glide-slide v-for="product in products" :key="product.id">
          <CardProducts
            :title="product.title"
            :price="product.price"
            :description="product.description"
            :image="product.image"
          />
        </vue-glide-slide>
      </vue-glide>
    </section>

    <!-- Vendor section -->
    <!-- <section class="mb-8 py-8 px-10">
      <h3 class="font-bold text-4xl mb-6">Vendedores</h3>
      <vue-glide :perView="4">
        <vue-glide-slide>
          <CardProducts
            title="Lorem Ipsum"
            :price="50000"
            description="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime..."
            image="https://imagenes.20minutos.es/files/article_amp/uploads/imagenes/2020/07/27/tomates.jpeg"
          />
        </vue-glide-slide>
        <vue-glide-slide>
          <CardProducts
            title="Lorem Ipsum"
            :price="50.000"
            description="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime..."
            image="https://imagenes.20minutos.es/files/article_amp/uploads/imagenes/2020/07/27/tomates.jpeg"
          />
        </vue-glide-slide>
        <vue-glide-slide>
          <CardProducts
            title="Lorem Ipsum"
            :price="50.000"
            description="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime..."
            image="https://imagenes.20minutos.es/files/article_amp/uploads/imagenes/2020/07/27/tomates.jpeg"
          />
        </vue-glide-slide>
        <vue-glide-slide>
          <CardProducts
            title="Lorem Ipsum"
            :price="50.000"
            description="Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod, maxime..."
            image="https://imagenes.20minutos.es/files/article_amp/uploads/imagenes/2020/07/27/tomates.jpeg"
          />
        </vue-glide-slide>
      </vue-glide>
    </section> -->

    <!-- Contact section -->
    <section class="w-7/12 h-48 max-h-48 grid grid-cols-3 gap-x-5 m-auto my-8">
      <div class="flex flex-col w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="" />
        <p class="text-justify">+57 XXX-XXX-XXXX</p>
      </div>
      <div class="flex flex-col w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="" />
        <p class="text-justify">contactoæ@elcampo.com</p>
      </div>
      <div class="flex flex-col w-full h-full items-center">
        <img class="h-40 w-40" src="../assets/logo.png" alt="" />
        <p class="text-justify">Carrera XX #17A09 Bogota</p>
      </div>
    </section>

    <!-- Footer component -->
    <Footer />
  </div>
</template>

<script>
// @ is an alias to /src
//Components
import Banner from "@/components/BannerCarousel.vue";
import Footer from "@/components/Footer.vue";
import CardProducts from "@/components/cards/CardProducts.vue";
import { Glide, GlideSlide } from "vue-glide-js"; //Carousel craeted with Vue-Glide for most information visit the page https://antonreshetov.github.io/vue-glide/

export default {
  name: "Home",
  components: {
    Banner,
    Footer,
    CardProducts,
    [Glide.name]: Glide,
    [GlideSlide.name]: GlideSlide,
  },
  data(){
    return {
      products: [],
    }
  },
  async created(){
    //Request before at created the DOM
    this.products = await fetch("http://localhost:8080/db.json").then(res => res.json())
  },
};
</script>