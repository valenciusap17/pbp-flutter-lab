# Tugas 7 PBP #

## Jelaskan apa yang dimaksud dengan stateless widget dan statefull widget serta perbedaan keduanya?
Statefull widget adalah widget yang dapat berubah saat pengguna atau user melakukan interaksi atau memberikan data kepada widget tersebut, sedangkan statefull widget adalah widget yang tidak akan berubah. Contoh dari statefull widget adalah Icon, IconButton, dan Text. Contoh statefull widget adalah Checkbox, Radio, InkWell, Form, dan Textfield.

## Widget yang dipakai pada proyek ini ##
* Scaffold: widget utama untuk membuat sebuah halaman pada flutter
* Appbar: widget yang digunakan sebagai menu penunjuk.
* Text:widget untuk menampilkan teks
* Column: widget yang digunakan untuk memposisikan widget-widget yang ada secara vertikal
* Aligning widget: widget yang digunakan untuk mengatur tata letak. Properti yang saya gunakan adalah mainAxisAlignment yang berfungsi untuk mengatur leteak widget pada sebuah baris 
* TextStyle: widget untuk melakukan manipulasi jenis font, ukuran, warna, dan lainnnya
* Row: widget yang digunakan untuk memposisikan widget-widget yang ada secara horizontal
* FLoatingActionButton: widget yang untuk menghasilkan sebuah tombol atau button memiliki efek mengapung atau mengambang di atas widget lain
* Icon: widget untuk menampilkan simbol atau gambar suatu objek yang melambangkan fungsi objek itu sendiri
* Padding: widget untuk menambahkan sebuah space kosong di di sekitar widget-widget lain.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut. ##
Pemanggilan fungsi setState() berfungsi untuk memberitahu framework bahwa keadaan internal dari suatu objek telah berubah dan perubahan yang dilakukan memungkinkan untuk memunculkan dampak pada user interface yang ada. Maka dari itu, pemanggilan setState() ini akan memicu framework untuk melakukan build tampilan ulang dan langsung melihat perubahan yang disebabkan dari perubahan keadaan internal objek ini. Variabel yang berdampak adalah variabel dari sebuah objek dengan kondisi yang diberitahu kepada framework.


## Jelaskan perbedaan antara const dengan final. ##
Const dan final, keduanya, tidak dapat diubah nilainya ketika sudah diassign nilai awal (immutable). Perbedaannya adalah const harus mengetahui nilainya saat compile-time, sedangkan final harus mengetahui nilainya saat run-time.

## Cara mengimplementasikan checklist di atas ##
Pertama-tama yang saya lakukan adalah membuat if condition di pada bagian children. Condition yang dibuat untuk menentukan widget ```Text``` mana yang akan keluar pada output (bagian ini yang akan berisi text "GANJIL" dan "GENAP" dengan masing-masing warna font sesuai dengan ketentuan yang diinginkan pada soal). Bagian ini menggunakan widget ```TextStyle``` untuk mengganti font color dari tulisan text yang akan tampil.

Kemudian kita membuat sebuah function ```_decrementCounter``` yang memiliki fungsi untuk melakukan decrement pada variabel ```_counter``` yang kita miliki. Bagian ini saya menggunakan method ```setState()``` untuk melakukan manipulasi internal state variabel ```_counter``` untuk mengubah nilai variabel yang dimiliki.

Lalu yang terakhir adalah menambahkan ```FLoatingActionButton``` untuk simbol ```-``` yang ketika ditekan akan melakukan pengurangan pada variabel ```_counter``` yang ada. Hal ini saya implementasikan dengan menggunakan widget ```Row()``` yang gunanya adalah agar berada pada satu baris, kemudian menambahkan widget aligning agar posisi widget berada tengah bagian kiri dan kanan dengan menggunakan ```MainAxisAlignment``` dan menambahkan widget ```Padding``` untuk menambahkan posisi floatingActionButton sesuai dengan yang saya inginkan, selain itu juga saya menggunakan widget Icon untuk mendapatkan lambang ```-```. 