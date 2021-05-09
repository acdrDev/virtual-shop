<template>
  <div class="cateogrias">
    <Banner />
    <div class="w-screen flex space-x-10">
      <!-- Filter -->
      <menu class="flex flex-col w-56 p-0 pl-5 my-8">
        <div
          class="grid grid-cols-6 items-center w-full border border-2 rounded-md border-primary px-4"
        >
          <i class="text-center">I</i>
          <h5
            class="col-span-5 text-primary text-center font-bold text-lg my-1"
          >
            Filtrar
          </h5>
        </div>
        <!-- Options -->
        <div class="pl-4 mt-6">
          <ul>
            <li>
              <div @click="filterHandler()" class="cursor-pointer"
                ><span class="text-complementary mr-1">&gt;</span
                >Categorías</div>
              <ul
                class="ml-5 text-sm font-light"
                v-bind:class="{ hidden: this.hidden }"
              >
                <li class="cursor-pointer">Lácteos</li>
                <li class="cursor-pointer">Cereales</li>
                <li class="cursor-pointer">Granos</li>
                <li class="cursor-pointer">Verduruas y frutas</li>
                <li class="cursor-pointer">Otros</li>
              </ul>
            </li>
          </ul>
        </div>
      </menu>

      <!-- Products section -->
      <main class="flex flex-col my-8">
        <h4 class="text-2xl font-bold mb-8">Todos los productos</h4>

        <!-- Container -->
        <div class="grid grid-cols-4 gap-x-8 gap-y-8">
          <CardProducts v-for="product in products" v-bind:key="product.id"
            :title="product.title"
            :price="product.price"
            :description="product.description"
            :image="product.image"
            :shadow="true"
          />
        </div>
      </main>
    </div>
    <Footer />
  </div>
</template>

<script>
//Components
import Banner from "@/components/BannerCarousel.vue";
import Footer from "@/components/Footer.vue";
import CardProducts from "@/components/cards/CardProducts.vue";

export default {
  name: "Categorias",
  components: {
    Banner,
    Footer,
    CardProducts,
  },
  data() {
    return {
      hidden: false,
      products: [],
    };
  },
  async created(){
    //Request before at created the DOM
    this.products = await fetch("https://mercadoscampesinosdelmeta.com/db.json").then(res => res.json())
  },
  methods: {
    filterHandler() {
      if (this.hidden) {
        this.hidden = false;
      } else {
        this.hidden = true;
      }
    },
  },
};
</script>
