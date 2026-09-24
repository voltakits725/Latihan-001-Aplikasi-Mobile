import 'dart:io';

void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [];

  String pilihan = '';

  do {
    print('\n=== MENU ===');
    print('1. Input mahasiswa');
    print('2. Lihat daftar nilai');
    print('3. Lihat nilai di atas 90');
    print('4. Keluar');

    stdout.write('Pilih: ');
    pilihan = stdin.readLineSync()!;

    if (pilihan == '1') {
      print('\n=== INPUT DATA MAHASISWA ===');

      stdout.write('NIM: ');
      String nim = stdin.readLineSync()!;

      stdout.write('Nama: ');
      String nama = stdin.readLineSync()!;

      stdout.write('Nilai Akhir: ');
      int nilai = int.parse(stdin.readLineSync()!);

      daftarMahasiswa.add({
        'NIM': nim,
        'Nama': nama,
        'Nilai Akhir': nilai,
      });

      print('\nData berhasil ditambahkan!');
    }

    else if (pilihan == '2') {
      print('\n=== DAFTAR NILAI ===');

      if (daftarMahasiswa.isEmpty) {
        print('Belum ada data mahasiswa.');
      } else {
        for (var mahasiswa in daftarMahasiswa) {
          print(
            '${mahasiswa['NIM']} | '
            '${mahasiswa['Nama']} | '
            '${mahasiswa['Nilai Akhir']}',
          );
        }
      }
    }

    else if (pilihan == '3') {
      print('\n=== NILAI DI ATAS 90 ===');
      if(daftarMahasiswa.isEmpty){
        print('Belum ada nilai yang diatas 90');
      }else{
        for (var mahasiswa in daftarMahasiswa) {
          if (mahasiswa['Nilai Akhir'] > 90) {
            print(
              '${mahasiswa['Nama']} : '
              '${mahasiswa['Nilai Akhir']}',
            );
          }
        }
      }

    }
    else if (pilihan == '4') {
      print('\nProgram selesai.');
    }

    else {
      print('\nPilihan tidak tersedia!');
    }

  } while (pilihan != '4');
}