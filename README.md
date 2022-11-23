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

# Tugas 8 PBP #

## Perbedaan Navigator.push dan Navigator.pushReplacement ##
Perintah Navigator.push membuat sebuah route baru untuk pindah ke halaman selanjutnya yang akan di push ke dalam sebuah stack sehingga route yang sebelumnya masih ada, sedangkan untuk perintah navigator.pushreplacement mengganti halaman dengan menghapus route awal dengan route yang baru sehingga route sebelumnya sudah tidak ada di dalam stack.
## Widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya ##
* Column: widget yang digunakan untuk memposisikan widget-widget yang ada secara vertikal
* Padding: widget untuk menambahkan sebuah space kosong di di sekitar widget-widget lain.
* Aligning widget: widget yang digunakan untuk mengatur tata letak. Properti yang saya gunakan adalah mainAxisAlignment yang berfungsi untuk mengatur letak widget pada sebuah baris dan crossAxisAlignment yang berfungsi untuk mengatur letak widget pada sebuah kolom
* TextStyle: widget untuk melakukan manipulasi jenis font, ukuran, warna, dan lainnnya
* Row: widget yang digunakan untuk memposisikan widget-widget yang ada secara horizontal
* TextButton: widget untuk membuat sebuah button yang di dalamnya bisa kita taruh widget text
* BoxDecorations: widget untuk menambahkan dekorasi kepada container yang kita miliki
* ListTile: widget untuk membentuk sebuah list dan dapat menampung beberapa widget di dalamnya
* DropdownButton: widget untuk menampilkan beberapa pilihan yang bisa kita pilih salah satu dari pilihan yang disediakan
* TextFormField: widget untuk menghasilkan sebuah elemen input sebagai tempat pengguna menaruh input

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed) ##
* OnPressed: event yang akan melaksanakan suatu kegiatan (sesuai dengan kode yang dibuat) ketika dipencet. Biasanya digunakan untuk sebuah tombol yang dipencet
* onTap: event yang akan melaksanakan suatu kegiatan (sesuai dengan kode yang dibuat) ketika sebuah objek yang terletak di posisi tertentu di tekan (gestures capture)
* onChanged: event yang akan melaksanakan suatu kegiatan (sesuai dengan kode yang dibuat) ketika nilai dari sebuah TextField diubah 
* dan lain-lain
## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter ##
Cara kerja navigator utnuk mengganti halaman adalah dengan membuat sebuah route baru yang digunakan untuk pergi ke laman baru yang dituju. Kemudian route-route yang kita punya itu akan disimpan ke dalam sebuah stack, maka untuk pergi ke route baru yang ingin kita tuju kita harus melakukan push. Kemudian untuk kembali ke laman sebelumnya yang perlu kita lakukan adalah pop, sehingga route baru akan dihilangkan dan kita kembali ke laman awal yang kita miiliki.
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas ##
Pertama-tama adalah kita membuat drawer yang memiliki tiga tombol navigasi sesuai dengan yang diinginkan. Drawer tersebut kemudian kita taruh di file terpisah agar kode yang kita miliki tidak terlalu panjang dan memusingkan. Drawer bisa kita panggil ketika kita menginginkannya. Kode drawer yang saya miliki saya taruh di sebuah file bernama ```drawer.dart```. Pemanggilan drawer bisa dilakukan dengan perintah ```drawer: DrawerApplication()``` dimana DrawerApplication adalah nama class drawer yang saya miliki.

Kemudian kita membuat sebuah class untuk objek baru yang ingin kita buat dan variabel list yang bersifat global sehingga data-data yang didapat bisa kita buat objectnya dan kita masukkan ke dalam list. Kode tersebut saya taruh di sebuah file baru bernama ```globals.dart```, berikut merupakan kode yang saya miliki:
```
library counter_7.globals;

class AllDataKeeped {
  String title;
  int amount;
  String kind;

  AllDataKeeped(this.title, this.amount, this.kind);
}

List<AllDataKeeped> allList = [];
```

Lalu kita menambahkan file dataBudget.dart yang merupakan sebuah form untuk menjadi halaman dimana pengguna nantinya akan memberikan input. Pada bagian ini kita mengambil setiap data yang kita perlukan untuk membuat objek baru untuk class yang sudha kita buat tadi dan kita taruh ke dalam list yang sudah sempat kita buat juga.

Setelah kita membuat objek yang kita inginkan di dataBudget.dart, maka kita sudah memiliki isi di dalam list data yang isinya ingin kita tampilkan. Untuk melakukan hal tersebut saya membuat dataBudget.dart yang isinya adalah mengambil setiap data yang ada di dalam list yang isinya sudah sesuai dengan yang kita inginkan dan kita tampilkan dengan menggunakan widget-widget yang ada. 

# Tugas 9 PBP #

##  Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? ##
Kita tidak perlu membuat data JSON terlebih dahulu ketika kita mau melakukan pengambilan data JSON. kita dapat membuat sebuah map dinamis dari JSON yang kemudian nilainya dapat kita akses. Namun hal tersebut dapat mengakibatkan sebuah eror ketika ada bagian yang hilang dan pada map yang kita buat sehingga menimbulkan eror ketika kita akses nilainya. Dengan menggunakan model, kita terhindar dari hal-hal tersebut sehingga membuat pembuatan model lebih baik.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya ##
* Column: widget yang digunakan untuk memposisikan widget-widget yang ada secara vertikal
* Padding: widget untuk menambahkan sebuah space kosong di di sekitar widget-widget lain.
* Aligning widget: widget yang digunakan untuk mengatur tata letak. Properti yang saya gunakan adalah mainAxisAlignment yang berfungsi untuk mengatur letak widget pada sebuah baris dan crossAxisAlignment yang berfungsi untuk mengatur letak widget pada sebuah kolom
* TextStyle: widget untuk melakukan manipulasi jenis font, ukuran, warna, dan lainnnya
* Row: widget yang digunakan untuk memposisikan widget-widget yang ada secara horizontal
* Appbar: widget yang digunakan sebagai menu penunjuk.
* TextButton: widget untuk membuat sebuah button yang di dalamnya bisa kita taruh widget text
* BoxDecorations: widget untuk menambahkan dekorasi kepada container yang kita miliki
* ListView: membuat widget untuk dapat melakukan scrolling
* Inkwell: widget yang memunculkan sebuah respons ketika di pencet oleh user (interaksi user)
* checkbox: widget untuk memunculkan sebuah checkbox
* FutureBuilder: widget yang membangun isi dirinya sendiri berdasarkan interaksi snapshot terbaru dengan masa depan
* Expanded: widget yang menambah space yang dimiliki oleh sebuah baris atau kolom sehingga isi yang dimiliki memiliki ruang yang cukup


## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter ##
Pertama-tama kita memberikan value API ke dalam url yang kemudian akan diambil datanya dengan menggunakan HTTP. Setelah itu kita melakukan decode data yang kita dapatkan menggunakan ```json.decode()``` menjadi bentuk json. Kemudian dari data json tersebut kita ubah ke dalam bentuk object watchlist yang kita miliki. Kemudian dengan menggunakan widget FutureBuilder, kita akan memanggil function ```fetchMyWatchList()``` yang gunanya adalah melakukan hal-hal yang sudah dijelaskan sebelumnya

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas ##
Pertama-tama kita membuat sebuah file baru bernama ```fetch_watchlist.dart``` yang isinya adalah kode function ```fetchMyWatchList()```untuk melakukan fetch data dari API yang diinginkan. Kemudian file tersebut ditaruh ke dalam sebuah folder bernama ```fetch```

Lalu kita membuat sebuah page baru yang isinya adalah menampilkan setiap data yang sudah kita dapatkan sebagia hasil fetch dari API tadi. pada bagian ini kita hanya menampilkan judul dan status watch seperti yang diinstruksikan. Saya membuat container yang berisi judul dengan status watch yang dapat ditekan dan akan masuk ke dalam page berisi detail setiap object yang kita dapatkan. Tak lupa juga mengimplementasikan checkbox untuk mengganti setiap outline container yang kita miliki bergantung dengan status sudah ditonton atau belum. Kita melakukan implementasinya kodenya pada file bernama ```MyWatchList_page.dart```. Pengimplementasiannya saya menggunakan widget ```FutureBuilder``` yang kemudian mengambil data yang sudah didapatkan kemudian menggunakan ```ListView``` untuk membuat efek dapat melakukan scrolling. Selanjutnya kita menggunakan widget ```Inkwell``` yang gunanya adalah membuat container yang kita miliki dapat dipencet dan melakukan router ke page lain selagi mempassing data yang dimiliki container tersebut. 

Setelah itu, kita perlu menghadirkan sebuah page yang berisi detail dari object yang sudah kita dapatkan. Untuk mengimplementasikannya kita mmebuat sebuah file baru bernama ```watchlist_detail.dart``` dan membuat tampilan sesuai dengan yang diinginkan dengan mengakses data yang sudah dipassing tadi melalui file ```MyWatchList_page.dart```.