<template>
    <footer class="h-64 max-h-64 bg-black">
        <!-- Information -->
        <div class="flex justify-between space-x-10 px-36 pb-8 bg-black">

            <!-- Left -->
            <div class="text-left mt-10">
                <h3 class="font-bold text-white mb-10 text-2xl">AL<span class="text-primary">CAMPO</span>COMPRO</h3>
                <p class="text-white text-opacity-60">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quasi et voluptatibus veniam, excepturi non similique.</p>
            </div>

            <!-- Right -->
            <div class="grid grid-cols-3 gap-x-8 text-left mt-10">
                <div class="flex flex-col">
                    <h5 class="text-white text-opacity-60 font-bold mb-10">Paginas</h5>
                    <a href="#" class="text-white font-bold text-sm">Categorias</a>
                    <a href="#" class="text-white font-bold text-sm">Vender</a>
                    <a href="#" class="text-white font-bold text-sm">Ayuda</a>
                </div>
                <div class="flex flex-col">
                    <h5 class="text-white text-opacity-60 font-bold mb-10">Contacto</h5>
                    <h6 class="text-white font-bold text-sm">+57 xxx-xxx-xxxx</h6>
                    <h6 class="text-white font-bold text-sm">contacto@gmail.com</h6>
                    <h6 class="text-white font-bold text-sm">Carrera XX #xxxx Bogota</h6>
                </div>
                <div class="flex flex-col">
                    <h5 class="text-white text-opacity-60 font-bold mb-10">Servicio en</h5>
                    <h6 class="text-white font-bold text-sm">Colombia</h6>
                </div>
            </div>
        </div>

        <!-- Credits-->
        <div class="flex space-x-64 bg-black justify-center border-t border-white border-opacity-60 pt-2">
            <h6 class="text-white text-opacity-60">&copy; 2020 Todos los derechos reservados.</h6>
            <a href="#" class="text-white font-bold">Teminos de Servicio</a>
        </div>
    </footer>
</template>
<script>
export default {
    name: 'Footer',
}
</script>
