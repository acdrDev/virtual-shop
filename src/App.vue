<template>
  <div id="app">
    <div class="h-14 flex justify-between space-x-12 items-center px-10">
      <a href="/" class="text-xl font-bold"><span class="text-primary">MERCADO</span>CAMPESINO</a>
      <div class="links flex items-center">
        <router-link to="/cart" class="mx-2"><i class="im im-shopping-cart text-complementary"></i></router-link>
        <router-link to="/categorias" class="mx-2">Productos</router-link>
        <router-link to="/vender" class="border-2 rounded border-primary text-primary p-2 mx-2">Vender</router-link>
      </div>
    </div>
    <router-view/>
  </div>
</template>
