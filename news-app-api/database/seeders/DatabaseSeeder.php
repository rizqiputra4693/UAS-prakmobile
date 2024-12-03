<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use DB;
use Illuminate\Database\Seeder;
use Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

$data = [
            [
                'nama' => 'Diskon Akhir Tahun untuk Baju',
                'deskripsi' => 'Nikmati diskon besar-besaran untuk semua koleksi baju akhir tahun ini.',
                'gambar' => 'https://www.freepik.com/free-photo/boy-wearing-green-jacket_13312677.htm#fromView=search&page=1&position=11&uuid=348432ff-ba27-4ff4-af8d-b0e0ba414fe4?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'baju',
            ],
            [
                'nama' => 'Model Celana Terbaru 2024',
                'deskripsi' => 'Celana dengan desain modern dan nyaman untuk dipakai sehari-hari.',
                'gambar' => 'https://images.unsplash.com/photo-1596472362030-9c6477b44147?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'celana',
            ],
            [
                'nama' => 'Topi Trendi untuk Musim Panas',
                'deskripsi' => 'Koleksi topi terbaik untuk melindungi Anda dari sinar matahari.',
                'gambar' => 'https://images.unsplash.com/photo-1561441948-933a1b7244ed?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'topi',
            ],
            [
                'nama' => 'Sepatu Sneakers Kekinian',
                'deskripsi' => 'Sneakers dengan desain kekinian yang cocok untuk semua kalangan.',
                'gambar' => 'https://images.unsplash.com/photo-1584995511666-e11644c2a5d9?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'sepatu',
            ],
            [
                'nama' => 'Kemeja Formal untuk Kantor',
                'deskripsi' => 'Kemeja formal dengan bahan berkualitas tinggi untuk kenyamanan sepanjang hari.',
                'gambar' => 'https://images.unsplash.com/photo-1531406932721-48968d91d5b4?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'baju',
            ],
            [
                'nama' => 'Celana Jeans Tahan Lama',
                'deskripsi' => 'Celana jeans dengan kualitas premium untuk gaya yang tahan lama.',
                'gambar' => 'https://images.unsplash.com/photo-1600919337469-fb2385d3440e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'celana',
            ],
            [
                'nama' => 'Topi Baseball dengan Desain Unik',
                'deskripsi' => 'Tambahkan sentuhan gaya pada penampilan Anda dengan topi baseball eksklusif.',
                'gambar' => 'https://images.unsplash.com/photo-1578344154679-12811575519f?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'topi',
            ],
            [
                'nama' => 'Sepatu Lari Nyaman',
                'deskripsi' => 'Sepatu lari yang dirancang untuk mendukung aktivitas olahraga Anda.',
                'gambar' => 'https://images.unsplash.com/photo-1595500905746-65ef7d9f240b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'sepatu',
            ],
            [
                'nama' => 'Tunik Cantik untuk Acara Kasual',
                'deskripsi' => 'Tunik modis dengan berbagai pilihan warna yang cocok untuk semua kesempatan.',
                'gambar' => 'https://images.unsplash.com/photo-1582036305443-3d1d75818a0a?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'baju',
            ],
            [
                'nama' => 'Celana Pendek Santai',
                'deskripsi' => 'Celana pendek yang nyaman untuk aktivitas sehari-hari di rumah atau di luar.',
                'gambar' => 'https://images.unsplash.com/photo-1571467283233-5223c3c6fa69?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'celana',
            ],
            [
                'nama' => 'Topi Panama Elegan',
                'deskripsi' => 'Topi Panama yang sempurna untuk melengkapi gaya elegan Anda.',
                'gambar' => 'https://images.unsplash.com/photo-1595520690124-1c41c564d660?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'topi',
            ],
            [
                'nama' => 'Sepatu Hiking Tangguh',
                'deskripsi' => 'Sepatu hiking dengan daya tahan tinggi untuk perjalanan alam Anda.',
                'gambar' => 'https://images.unsplash.com/photo-1600271711034-73e02c1be618?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'sepatu',
            ],
            [
                'nama' => 'Kaos Polos Berbahan Lembut',
                'deskripsi' => 'Kaos polos berbahan lembut yang nyaman dipakai sepanjang hari.',
                'gambar' => 'https://images.unsplash.com/photo-1605914551173-1f003f72c5d9?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'baju',
            ],
            [
                'nama' => 'Celana Jogger untuk Olahraga',
                'deskripsi' => 'Celana jogger yang nyaman untuk aktivitas olahraga maupun santai.',
                'gambar' => 'https://images.unsplash.com/photo-1601029635581-cf537e8d2bc7?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'celana',
            ],
            [
                'nama' => 'Topi Bucket Gaya Anak Muda',
                'deskripsi' => 'Topi bucket yang keren untuk melengkapi gaya anak muda masa kini.',
                'gambar' => 'https://images.unsplash.com/photo-1601027367575-41c91f2d58fc?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'topi',
            ],
            [
                'nama' => 'Sepatu Kulit Formal',
                'deskripsi' => 'Sepatu kulit dengan desain klasik untuk acara formal.',
                'gambar' => 'https://images.unsplash.com/photo-1591852336353-0be4e8fe1d2b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'sepatu',
            ],
            [
                'nama' => 'Sweater Hangat Musim Dingin',
                'deskripsi' => 'Sweater hangat dengan bahan tebal yang cocok untuk musim dingin.',
                'gambar' => 'https://images.unsplash.com/photo-1602920380511-d4a5e12f5668?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'baju',
            ],
            [
                'nama' => 'Celana Chino Stylish',
                'deskripsi' => 'Celana chino dengan desain stylish untuk tampilan semi-formal.',
                'gambar' => 'https://images.unsplash.com/photo-1604083718303-b91d51309a6b?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'celana',
            ],
            [
                'nama' => 'Topi Fedora Klasik',
                'deskripsi' => 'Topi fedora dengan desain klasik yang cocok untuk acara formal.',
                'gambar' => 'https://images.unsplash.com/photo-1601592680401-95e92c3fd4c2?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'topi',
            ],
            [
                'nama' => 'Sepatu Boot Outdoor',
                'deskripsi' => 'Sepatu boot dengan bahan tahan air yang cocok untuk aktivitas outdoor.',
                'gambar' => 'https://images.unsplash.com/photo-1604105241395-25be3fdc9c4e?crop=entropy&cs=tinysrgb&fit=max&ixid=MnwzNjk5MnwxfGFsbHwxfHx8fHx8fHx8fDE2NzQ0NTMwMjM&ixlib=rb-1.2.1&q=80&w=1080',
                'kategori' => 'sepatu',
            ],
        ];

        foreach ($data as $item) {
            DB::table('beritas')->insert(array_merge($item, [
                'created_at' => now(),
                'updated_at' => now(),
            ]));
        }

    }
}
