void main() {
  // for dengan indeks
  for (int i = 1; i <= 14; i++) {
    if( i % 2 == 1){
      print('pertemuan ke-$i');
    }
    print('Pertemuan ke-$i');
  }
 
  // for-in: menjumlahkan total belanja
  // List<int> belanja = [15000, 20000, 5000];
  // int total = 0;
  // for (final harga in belanja) {
  //   total += harga;
  // }
  // print('Total: $total'); // Total: 40000
  //contohForIn();
  contohWhile();
}

void contohForIn(){
  List<int> pengeluaran = [10000, 40000, 5000];
  print(pengeluaran);
  int totalPengeluaran = 0;

  for(final belanja in pengeluaran ){
    totalPengeluaran += belanja;
  }
  print('Total pengeluaran : $totalPengeluaran');
}

void contohWhile(){
  const MAX_PERCOBAAN = 3;
  const String DEFAULT_PASSWORD = 'password';
  List<String> password = ['12345', 'abcde', 'password'];
  int totalPercobaan = 0;
  bool berhasil = false;

  while(!berhasil && totalPercobaan < MAX_PERCOBAAN){
    String tempPassword = password[totalPercobaan];
    totalPercobaan++;
    if(tempPassword == DEFAULT_PASSWORD){
      berhasil = true;
    }
  }
  print('Status validasi password : $berhasil, percobaan berapa kali : $totalPercobaan');
}

