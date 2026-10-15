NUMBLE: Guess the Number

Numble adalah game tebak angka berbasis teks yang dibuat dengan Pascal. Pemain bisa memilih dua mode: menebak angka rahasia yang dipilih komputer, atau giliran komputer yang menebak angka yang dipikirkan pemain. Setelah satu ronde selesai, pemain bisa kembali ke menu utama untuk bermain lagi atau keluar.

DAFTAR ANGGOTA KELOMPOK
1. Callysta Adzra Kesuma, 261401006, Kom-C, DP 5
2. Grasya Yuniarti Saragi, 261401009, Kom-C, DP 5
3. Zahra Khairina, 261401069, Kom-C, DP 5

Fitur Utama
1. Dua mode permainan: kamu yang menebak dan komputer yang menebak.
2. Mode 1: komputer memilih angka acak 1-10, pemain menentukan sendiri jumlah kesempatan.
3. Petunjuk "Terlalu kecil" atau "Terlalu besar" di setiap tebakan.
4. Mode 2: pemain menentukan batas atas angka, lalu komputer menebak berdasarkan petunjuk pemain (1 = lebih besar, 2 = lebih kecil, 3 = benar).
5. Validasi input: jumlah kesempatan dan batas atas minimal 1, tebakan harus 1-10, petunjuk harus 1, 2, atau 3.
6. Pesan menang atau kalah, dan opsi main lagi yang membawa pemain kembali ke menu utama.

Logika yang Digunakan
1. Menu utama: pemain memilih mode lewat case. Setelah ronde selesai, goto awal melompat kembali ke menu.
2. Mode 1: angka rahasia diacak dengan random(10) + 1. Loop for berjalan sebanyak jumlah kesempatan. Tebakan di luar 1-10 dilewati dengan continue, tebakan benar mengakhiri loop dengan break.
3. Mode 2: komputer memakai binary search. Tebakan selalu di tengah rentang ((bawah + atas) div 2). Jika angka lebih besar, batas bawah naik. Jika lebih kecil, batas atas turun. Rentang terus menyempit sampai angka ketemu.
4. Jumlah maksimal tebakan komputer dihitung dengan while, yaitu berapa kali angka 1 bisa dikali 2 sampai melebihi batas atas.
5. Validasi jumlah kesempatan dan batas atas memakai repeat until, yang mengulang pertanyaan sampai input valid.
6. Jika petunjuk pemain tidak konsisten (rentang habis tapi angka belum ketemu), program menampilkan pesan bahwa angkanya tidak bisa ditemukan.wal ronde), jika N program selesai, selain itu dianggap tidak valid dan program keluar.
