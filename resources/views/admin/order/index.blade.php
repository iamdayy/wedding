<x-dashboard>

    <main class="h-full overflow-y-auto">
        <div class="container grid px-6 mx-auto">
            <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                Daftar order
            </h2>

            <!-- Cards -->
            <div class="flex flex-col flex-wrap mb-4 space-y-4 md:flex-row md:items-end md:space-x-4">
                <a href="{{ route('admin.order.create') }}"
                    class="px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">
                    Buat Baru
                </a>
            </div>

            <!-- New Table -->
            <div class="w-full overflow-hidden rounded-lg shadow-xs">

                <div class="w-full overflow-x-auto">
                    <table class="w-full whitespace-no-wrap">
                        <thead>
                            <tr
                                class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                <th class="px-4 py-3">ID</th>
                                <th class="px-4 py-3">Nama Kustomer</th>
                                <th class="px-4 py-3">Email</th>
                                <th class="px-4 py-3">No. Telp</th>
                                <th class="px-4 py-3">Produk</th>
                                <th class="px-4 py-3">Jumlah</th>
                                <th class="px-4 py-3">Status</th>
                                <th class="px-4 py-3">Action</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                            @foreach ($orders as $i => $item)
                                <tr class="text-gray-700 dark:text-gray-400">
                                    <td class="px-4 py-3">
                                        {{ $i + 1 }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->name }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->email }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->phone }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->produk->judul }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->jumlah }}
                                    </td>
                                    <td class="px-4 py-3 text-sm">
                                        {{ $item->status }}
                                    </td>

                                    <td class="px-4 py-3">
                                        <div class="flex items-center space-x-4 text-sm">
                                            <a href="{{ route('admin.order.destroy', $item->id) }}"
                                                onclick="event.preventDefault(); if(confirm('Are you sure you want to delete this?')) { document.getElementById('delete-form-{{ $item->id }}').submit(); }"
                                                class="flex items-center justify-between px-2 py-2 text-sm font-medium leading-5 text-purple-600 rounded-lg dark:text-gray-400 focus:outline-none focus:shadow-outline-gray"
                                                aria-label="Delete">
                                                <svg class="w-5 h-5" aria-hidden="true" fill="currentColor"
                                                    viewBox="0 0 20 20">
                                                    <path fill-rule="evenodd"
                                                        d="M9 2a1 1 0 00-.894.553L7.382 4H4a1 1 0 000 2v10a2 2 0 002 2h8a2 2 0 002-2V6a1 1 0 100-2h-3.382l-.724-1.447A1 1 0 0011 2H9zM7 8a1 1 0 012 0v6a1 1 0 11-2 0V8zm5-1a1 1 0 00-1 1v6a1 1 0 102 0V8a1 1 0 00-1-1z"
                                                        clip-rule="evenodd"></path>
                                                </svg>
                                            </a>
                                            <form id="delete-form-{{ $item->id }}"
                                                action="{{ route('admin.order.destroy', $item->id) }}" method="POST"
                                                style="display: none;">
                                                @csrf
                                                @method('DELETE')
                                            </form>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <div
                    class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
                    <span class="flex items-center col-span-3">
                        Showing {{ $orders->firstItem() }}-{{ $orders->lastItem() }} of
                        {{ $orders->total() }}
                    </span>
                    <span class="col-span-2"></span>
                    <!-- Pagination -->
                    <span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
                        {{ $orders->links() }}
                    </span>
                </div>


            </div>


        </div>
    </main>

</x-dashboard>
