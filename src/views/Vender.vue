<template>
  <div class="vender">
    <div class="flex flex-col items-center justify-center mb-10 pt-10 border-t-2 mx-8 sm:mx-0">
      <h2 class="text-4xl text-primary font-bold mb-2">Aun paso de empezar a vender...</h2>
      <p class="mb-8 text-center">
        Ingresa tus datos y uno de nuestros empleados se comunicara contigo para
        activar tu cuenta.
      </p>
      <form class="w-full max-w-lg">
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="first-name"
            >
              Nombre
            </label>
            <input
              class="appearance-none block w-full bg-gray-200 text-gray-700 border rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
              id="first-name"
              type="text"
              placeholder="Jane"
            />
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="last-name"
            >
              Apellidos
            </label>
            <input
              class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
              id="last-name"
              type="text"
              placeholder="Doe"
            />
          </div>
        </div>
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full px-3">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="email"
            >
              Correo
            </label>
            <input
              class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
              id="email"
              type="email"
              placeholder="jane_doe@gmail.com"
            />
          </div>
        </div>
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full px-3">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="phone"
            >
              Telefono
            </label>
            <div class="flex">
              <input
                class="appearance-none block w-14 bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-2 mb-3 mr-2 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                id="phone"
                type="prefijo"
                value="+57"
              />
              <input
                class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
                id="phone"
                type="number"
                placeholder="3125994960"
              />
            </div>
          </div>
        </div>
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="state"
            >
              Departamento
            </label>
            <input
              class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
              id="state"
              type="text"
              placeholder="Meta"
            />
          </div>
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label
              class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
              for="city"
            >
              Ciudad
            </label>
            <input
              class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
              id="city"
              type="text"
              placeholder="Villavicencio"
            />
          </div>
        </div>
        <input type="submit" class="w-full bg-white py-1 border-2 border-secundary rounded text-secundary text-xl font-bold cursor-pointer hover:bg-secundary hover:text-white" value="Enviar">
      </form>
    </div>
    <Footer />
  </div>
</template>

<script>
//Components
import Footer from "@/components/Footer.vue";

export default {
  name: "Categorias",
  components: {
    Footer,
  },
};
</script>
