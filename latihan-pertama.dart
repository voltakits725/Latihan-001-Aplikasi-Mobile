void main() {
  
    String? dayinmylife = "A Day In My Life Azril And Cahyo";
    print(dayinmylife.toUpperCase());

   dayinmylife = null;
   print(dayinmylife);

   String namaProduk = 'Botol Plastik';

   int umur = 20;
    int jumlahBarang = 5;
    int poin = 1000;

    print('$umur $jumlahBarang $poin');
    // bilangan double untuk pecahan angka desimal
    double berat = 2.5;
    double harga = 15000.50;
    double rating = 4.8;
    
    // num bisa menyimpan angka bilangan bulat maupun desimal
    num nilai = 10;
    nilai = 10.5;

    // List digunakan untuk meyimpan data dengan tipe sama
    List<String> namaMahasiswa = [
    'Andi',
    'Budi',
    'Citra',
    ];

    print(namaMahasiswa[0]);
    print(namaMahasiswa[1]);
    print(namaMahasiswa[2]);

    //Set mirip List, tetapi tidak menyimpan nilai duplikat.

    Set<String> kategori = {
    'Plastik',
    'Kertas',
    'Plastik',
    };
    print(kategori);

    Map<String, dynamic> mahasiswa = {
    'nama': 'Budi',
    'umur': 20,
    'aktif': true,
    };
    // mengambil data
    print(mahasiswa['nama']);
    print(mahasiswa['umur']);
    print(mahasiswa['aktif']);

}
