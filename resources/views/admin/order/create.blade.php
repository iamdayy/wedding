<x-dashboard>

    <main class="h-full pb-16 overflow-y-auto">
        <div class="container grid px-6 mx-auto">
            <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                Buat order
            </h2>
            <!-- CTA -->


            <!-- General elements -->
            <form action="{{ route('admin.order.store') }}" method="POST" enctype="multipart/form-data">
                @csrf


                <div class="px-4 py-3 mb-8 bg-white rounded-lg shadow-md dark:bg-gray-800">

                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Nama Customer</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="name" type="text" name="name" placeholder="isi disini" />
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Email</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="email" type="email" name="email" placeholder="isi disini" />
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">No. Telp</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="phone" type="text" name="phone" placeholder="isi disini" />
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Alamat</span>
                        <textarea
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="alamat" type="text" name="alamat" placeholder="isi disini"></textarea>
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Produk</span>
                        <select
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-select"
                            id="produk_id" name="produk_id">
                            @foreach ($produks as $produk)
                                <option value="{{ $produk->id }}">{{ $produk->judul }}</option>
                            @endforeach
                        </select>
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Jumlah</span>
                        <input
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-input"
                            id="jumlah" type="number" name="jumlah" placeholder="isi disini" />
                    </label>
                    <br>
                    <label class="block text-sm">
                        <span class="text-gray-700 dark:text-gray-400">Status</span>
                        <select
                            class="block w-full mt-1 text-sm dark:border-gray-600 dark:bg-gray-700 focus:border-purple-400 focus:outline-none focus:shadow-outline-purple dark:text-gray-300 dark:focus:shadow-outline-gray form-select"
                            id="status" name="status">
                            <option value="pending">Pending</option>
                            <option value="proses">Proses</option>
                            <option value="selesai">Selesai</option>
                        </select>
                    </label>

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
