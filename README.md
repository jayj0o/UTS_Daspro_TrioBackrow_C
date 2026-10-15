NUMBLE: Guess the Number
Numble adalah game tebak angka berbasis teks yang dibuat dengan Pascal.
Komputer memilih angka rahasia secara acak antara 1 sampai 10, lalu pemain menentukan sendiri berapa kali kesempatan menebak yang diinginkan.
Setiap tebakan akan diberi petunjuk “Too low” atau “Too high” sampai angkanya benar atau kesempatan habis.
Setelah satu ronde selesai, pemain bisa memilih main lagi atau keluar.

DAFTAR ANGGOTA KELOMPOK
1. Callysta Adzra Kesuma, 261401006, Kom-C, DP 5
2. Grasya Yuniarti Saragi, 261401009, Kom-C, DP 5
3. Zahra Khairina, 261401069, Kom-C, DP 5

Fitur Utama
1. Angka rahasia 1-10 diacak tiap ronde (randomize dan random).
2. Pemain menentukan sendiri jumlah kesempatan menebak.
3. Petunjuk "Too low" atau "Too high" pada tiap tebakan salah.
4. Validasi input: jumlah kesempatan harus lebih dari 0 dan tebakan harus di rentang 1-10.
5. Pesan menang atau kalah (angka rahasia ditampilkan saat kalah).
6. Opsi main lagi tanpa menjalankan ulang program.

Materi yang Digunakan
- Pengondisian: if-else (cek tebakan) dan case (menu main lagi).
- Pengulangan: for (putaran tebakan) dan repeat until (validasi jumlah kesempatan).
- Perloncatan: goto (mengulang game), break (keluar loop saat tebakan benar), continue (melewati tebakan di luar 1-10).

Logika Program
1. Program menampilkan sambutan dan meminta jumlah kesempatan. Repeat until mengulang pertanyaan sampai input lebih dari 0.
2. Komputer mengacak angka rahasia dan mengatur menang := false.
3. Loop for berjalan sebanyak jumlah kesempatan. Di tiap putaran:
   a. Jika tebakan di luar 1-10, tampilkan peringatan lalu continue.
   b. Jika tebakan benar, tampilkan pesan menang, set menang := true, lalu break.
   c. Jika kurang atau lebih, tampilkan petunjuk dan lanjut ke putaran berikutnya.
4. Setelah loop, jika menang masih false, tampilkan pesan kalah beserta angka rahasianya.
5. Program menanyakan main lagi. Dengan case: jika Y maka goto start (kembali ke awal ronde), jika N program selesai, selain itu dianggap tidak valid dan program keluar.
