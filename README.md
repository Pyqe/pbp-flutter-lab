# Tugas 7

## Stateless dan Stateful Widget

*Stateless widget* adalah *widget* yang bersifat statis atau tidak bisa berubah. Contoh dari *stateless widget* adalah `Text` dan `Icon`.

*Stateful widget* adalah *widget* yang bersifat dinamis atau bisa berubah. Contoh dari *stateful widget* adalah `Radio`, `Checkbox`, dan `TextField`.

## Widget yang Dipakai pada Tugas

- `AppBar`: Bar di atas aplikasi.
- `Center`: Menampilkan anaknya di tengah.
- `Column`: Menampilkan anak-anaknya dalam sebuah kolom.
- `EdgeInsets`: Mengatur bagaimana *padding* *widget*.
- `FloatingActionButton`: Tombol yang bisa diinteraksi oleh pengguna dan men-*trigger* *event*.
- `Icon`: Ikon.
- `MainAxisAlignment`: Mengatur bagaimana penderetan *widget*.
- `Padding`: Memberikan *padding* ke anaknya.
- `Row`: Menampilkan anak-anaknya dalam sebuah baris.
- `Scaffold`: *Widget* utama berisi semua *widget* pada aplikasi.
- `Text`: Teks.
- `Visibility`: Mengatur visibilitas anaknya.

## Guna `setState`

Fungsi `setState` digunakan untuk membangun ulang *widget* karena adanya perubahan nilai. Variabel yang terdampak adalah yang diubah di dalam fungsi `setstate` tersebut. Khususnya, untuk tugas ini, yang diubah adalah `_counter`.

## Perbedaan `const` dan `final`

Keduanya merupakan nilai yang tidak bisa diubah. Perbedaannya, nilai `const` dihitung saat *compile time*, sedangkan nilai `final` dihitung saat *run time*.

## Implementasi

1. Menjalankan `flutter create counter_7`.
2. Mengubah `main.dart`:
    - Mengubah `title` menjadi `'Program Counter'`.
    - Menambah `if` pada teks yang ada di tengah supaya menampilkan GENAP atau GANJIL dengan warnanya sesuai paritas `_counter`.
    - Membuat *widget* `Padding` berisi `Row` berisi dua `FloatingActionButton`, yang satu memanggil fungsi `_decrementCounter`, yang satunya memanggil fungsi `_incrementCounter`.
    - Membuat fungsi `_decrementCounter` untuk mengurangi nilai `_counter` sebesar $1$ jika nilainya lebih dari $0$.
    - Menambah *widget* `Visibility` pada tombol pengurang untuk menyembunyikannya jika dan hanya jika nilai `_counter` sama dengan $0$.

# Tugas 8

## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`

Jika `Navigator.push` dijalankan saat pergantian halaman, akan ditambahkan halaman baru ke atas *stack*-nya *Navigator*. Kerugian dari melakukan ini untuk setiap pergantian halaman adalah *stack*-nya akan berukuran sangat besar.

Jika `Navigator.pushReplacement` dijalankan saat pergantian halaman, elemen teratas pada *stack* akan diubah menjadi halaman barunya. Kerugian dari melakukan ini adalah kita tidak bisa kembali ke halaman tepat sebelumnya.

## Widget yang digunakan

- `AppBar`: Bar di atas aplikasi.
- `BorderRadius`
- `Center`: Menampilkan anaknya di tengah.
- `Column`: Menampilkan anak-anaknya dalam sebuah kolom.
- `Container`
- `Drawer`
- `DropdownButtonFormField`
- `EdgeInsets`: Mengatur bagaimana *padding* *widget*.
- `FloatingActionButton`: Tombol yang bisa diinteraksi oleh pengguna dan men-*trigger* *event*.
- `Form`
- `Icon`: Ikon.
- `InputDecoration`
- `ListTile`
- `MainAxisAlignment`: Mengatur bagaimana penderetan *widget*.
- `OutlineInputBorder`
- `Padding`: Memberikan *padding* ke anaknya.
- `Row`: Menampilkan anak-anaknya dalam sebuah baris.
- `Scaffold`: *Widget* utama berisi semua *widget* pada aplikasi.
- `SizedBox`
- `Spacer`
- `Text`: Teks.
- `TextButton`
- `TextFormField`
- `Visibility`: Mengatur visibilitas anaknya.

## Event pada Flutter

- `onPressed`
- `onChanged`
- `onSaved`

## Cara Kerja Navigation

*Navigation* pada Flutter adalah yang mengatur tentang pergantian halaman. Halaman-halaman pada Flutter yang diakses disimpan dalam struktur data *stack*.

## Implementasi

1. Buat dua *file* baru `form.dart` dan `data.dart` untuk masing-masing halaman Form Budget dan Data Budget.
2. Tambahkan pada masing-masing dari `main.dart`, `form.dart`, dan `data.dart` supaya saling meng-*import* satu sama lain.
3. Tambahkan `Drawer` pada masing-masing *file* yang berisi tombol-tombol untuk berpindah-pindah halaman.
4. Pada `form.dart`, tambahkan empat hal berikut yang ditampilkan pada satu kolom:
    1. *Text field* untuk mengisi judul *budget*.
    2. *Text field* untuk mengisi nominal *budget*.
    3. *Dropdown* untuk mengisi jenis *budget*.
    4. Tombol "Simpan" untuk membuat *budget* baru berdasarkan masukan.
5. Buat `List` pada `form.dart` untuk menyimpan *budget*-*budget* yang sudah dibuat.
6. Tambah fungsi pada tombol "Simpan" supaya ketika ditekan, data-data *budget* baru akan di-`add` ke `List` dan akan ditampilkan dialog yang memberi tahu bahwa data berhasil tersimpan.
7. Pada `data.dart`, di dalam `Column` pada `body`, buat supaya `children`-nya menampilkan satu `Card` untuk masing-masing dari *budget* yang telah dibuat.
8. Lakukan `add`, `commit`, dan `push` ke GitHub.
3. *Push* semua ke GitHub.

### Tugas 9

## Pengambilan JSON Tanpa Membuat Model

Pengambilan JSON bisa dilakukan tanpa membuat model. Namun, supaya mempermudah pemrosesan data yang diambil, direkomendasi untuk membuat model terlebih dahulu.

## Widget yang Digunakan

- `FutureBuilder`: Untuk menampilkan tampilan tertentu apabila data yang ingin di-build belum ter-build.
- `CircularProgressIndicator`: Animasi loading.
- `SizedBox`: Boks berukuran.
- `InkWell`: Widget yang merespons terhadap sentuhan.
- `BoxDecoration`: Dekorasi boks.
- `BorderRadius`: Radius sudut boks.
- `BoxShadow`: Bayangan boks.
- `FontWeight`: Weight untuk suatu font untuk mengatur ketebalan.

## Proses Pengambilan JSON pada Flutter

1. Tentukan sumber JSON yang ingin diambil.
2. Buat model class sesuai sumber tersebut.
3. Buat fungsi untuk fetch sumber JSON tersebut.
4. Masukkan data yang di-fetch pada instansi class yang sudah dibuat.
5. Gunakan data-data tersebut pada widget-widget yang ditampilkan pada halamannya.

## Implementasi

1. Buat `watchlist.dart` untuk halaman yang menampilkan daftar watch list.
2. Buat supaya `drawer` setiap halaman bisa mengakses halaman daftar watch list.
3. Buat `watchlistmodel.dart` untuk mendeklarasi class `WatchList` yang dibuat menggunakan Quicktype.
4. Tambahkan fungsi pada `watchlist.dart` untuk fetch data dari tugas 3 dan disimpan kepada suatu `List<WatchList>`.
5. Buat suatu tampilan "loading" pada `watchlist.dart` yang jika sudah selesai akan menampilkan daftar item watch list yang mengambil dari nilai-nilai `List<WatchList>`.
6. Buat setiap item pada daftar menjadi bisa diklik dan akan berpindah halaman ke detail item tersebut.
7. Buat `watchlist_details.dart` untuk menampilkan halaman detail suatu item watch list yang menerima parameter isi dari suatu item yang ingin ditampilkan.
8. Untuk menampilkan tanggal, gunakan package `intl` yang sebelumnya perlu ditambahkan pada `dependencies`.
9. Lakukan `add`, `commit`, dan `push` ke GitHub.