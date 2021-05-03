<template>
  <div id="app">
    <div class="w-screen h-14 flex justify-between space-x-12 items-center px-10">
      <h2>AL<span class="text-primary">CAMPO</span>COMPRO</h2>
      <input type="text" placeholder="Buscar" class="w-2/5 border-black rounded border-2 h-7 p-2">
      <div class="links">
        <router-link to="/categorias" class="mx-2">Categorias</router-link>
        <router-link to="/vender" class="mx-2">Vender</router-link>
        <router-link to="/ayuda" class="mx-2">Ayuda</router-link>
        <router-link to="/ingresar" class="border-2 rounded border-primary text-primary p-2 mx-2">Ingresar</router-link>
      </div>
    </div>
    <router-view/>
  </div>
</template>
