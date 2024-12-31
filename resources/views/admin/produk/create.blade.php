<x-dashboard>

    <main class="h-full pb-16 overflow-y-auto">
        <div class="container grid px-6 mx-auto">
            <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                Buat produk
            </h2>
            <!-- CTA -->


            <!-- General elements -->
            <form action="{{ route('admin.produk.store') }}" method="POST" enctype="multipart/form-data">
                @csrf


                <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Judul produk</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="judul" type="text" name="judul" placeholder="isi disini" />
                    </label>
                    <br>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Deskripsi</span>
                        <textarea
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="deskripsi" type="text" name="deskripsi" rows="10" placeholder="isi produk disini"></textarea>
                    </label>
                    <br>

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Upload Gambar</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="image" type="file" name="image" placeholder="isi disini" />
                    </label>


                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Kategori</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="kategori" type="text" name="kategori" placeholder="isi disini" />
                    </label>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Harga</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="harga" type="number" name="harga" placeholder="isi disini" />
                    </label>
                    <br>


                    <br>
                    <label class="block text-sm">
                        <button
                            class="w-full px-10 py-4 font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">
                            kirim
                        </button>
                    </label>
                </div>
            </form>
        </div>
    </main>

</x-dashboard>
