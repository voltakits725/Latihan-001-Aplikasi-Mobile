```dart
void main() {
    
    String NIM = '1124160165';
    String Nama = 'Rafly Kurniawan';
    String Prodi = 'Teknik Informatika';
    String Konsentrasi = 'Software Engineering';
    String Angkatan = "2024";
    int umur = 20;
    bool sudahLulus = false;
    print('''
NIM = $NIM
Nama = $Nama
Prodi = $Prodi
Konsentrasi = $Konsentrasi
Angkatan = $Angkatan
Sudah Lulus = $sudahLulus
Umur = $umur
''');
    print('======================================');
    // wleeee operasi bilangan dasar 
    int angka1 = 10;
    int angka2 = 5;

    int pertambahan, perkalian, pengurangan;
    double pembagian;

    perkalian = angka1 * angka2;
    pertambahan = angka1 + angka2;
    pengurangan = angka1 - angka2;
    pembagian = angka1 / angka2;

    print('Hasil Perkalian $angka1 * $angka2 = $perkalian');
    print('Hasil Pertambahan $angka1 + $angka2 = $pertambahan');
    print('Hasil pengurangan $angka1 - $angka2 = $pengurangan');
    print('Hasil pembagian $angka1 / $angka2 = $pembagian');
    print('======================================');
    List<String> produkBaju =[
      'Kaos Cotton Combed 24s',
      'Kaos Cotton Combed 30s',
      'Kaos cotton Bamboo 24s',
      'Kaos Anak Punk 24s',
    ];
    print(produkBaju[0]);
    print(produkBaju[1]);
    print(produkBaju[2]);
    print(produkBaju[3]);

    print('==== Menambah list baju =====');
    produkBaju.add('Kaos Lengan panjang 24s');
    print(produkBaju);

    print('===== menghitung Jumlah produk baju =====');
    print(produkBaju.length);

    print('====== menghapus list baju berdasarkan index  =======');
    produkBaju.removeAt(3);
    print(produkBaju);

    print('====== MEnghapus Semua data Baju =====');
    produkBaju.clear();
    print(produkBaju);

    print('====== map nilai siswa =======');
    Map<String, int> nilaiSiswa ={
        'Deny': 91,
        'Rafly': 85,
        'Azril': 75,
        'Firlo': 65,
        'Anggara': 60,
        'Ilham': 87,
        'Budi': 60,
        'Ilyas': 50,
    };
    
    nilaiSiswa.forEach((siswa, nilai){
        print('$siswa: $nilai');
    });
    print('====== Ambil Nilai siswa diatas 65 ======');
   
    nilaiSiswa.forEach((siswa, nilai){
        if(nilai >= 65){
            print('$siswa: $nilai');
        }
    });

    List<Map<String, dynamic>> daftarNilaiAkhirMhs = [
    {
        'NIM': '1124160165',
        'Nama': 'Rafly Kurniawan',
        'Nilai Akhir': 90,
    },
    {
        'NIM': '1124160087',
        'Nama': 'Deny',
        'Nilai Akhir': 80,
    },
    ];

    daftarNilaiAkhirMhs.forEach((mahasiswa) {
    print('NIM: ${mahasiswa['NIM']}');
    print('Nama: ${mahasiswa['Nama']}');
    print('Nilai Akhir: ${mahasiswa['Nilai Akhir']}');
    print('----------------');
    });
    daftarNilaiAkhirMhs.forEach((mahasiswa){
        if(mahasiswa['Nilai AKhir'] >= 90){
            print(mahasiswa['NIM']);
        }
    });

}
```
