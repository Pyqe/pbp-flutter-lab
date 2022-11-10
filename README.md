# PBP Flutter Mabar Benar

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
3. *Push* semua ke GitHub.