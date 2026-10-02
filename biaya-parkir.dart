double hitungBiayaDasar(String jenisKendaraan) {
  if (jenisKendaraan == 'motor') {
    return 3000;
  } else {
    return 5000;
  }
}

double hitungDiskonMember(double totalBiaya, bool member) {
  if (member) {
    return totalBiaya * 10 / 100;
  }

  return 0;
}

double hitungTotalParkir(
    String jenisKendaraan,
    int lamaParkir,
    bool member) {

  // Hitung biaya dasar
  double biayaDasar = hitungBiayaDasar(jenisKendaraan);

  // Hitung biaya jam tambahan
  double biayaTambahan = 0;

  if (lamaParkir > 1) {
    if (jenisKendaraan == 'motor') {
      biayaTambahan = (lamaParkir - 1) * 2000;
    } else {
      biayaTambahan = (lamaParkir - 1) * 3000;
    }
  }

  // Total biaya sebelum diskon
  double totalBiaya = biayaDasar + biayaTambahan;

  // Hitung diskon member
  double potongan = hitungDiskonMember(
    totalBiaya,
    member,
  );

  // Total setelah diskon
  double total = totalBiaya - potongan;

  // Maksimal biaya parkir Rp20.000
  if (total > 20000) {
    total = 20000;
  }

  return total;
}

void main() {
  String jenisKendaraan = 'mobil';
  int lamaParkir = 4;
  bool member = true;

  double totalBayar = hitungTotalParkir(
    jenisKendaraan,
    lamaParkir,
    member,
  );

  print("=== SISTEM PARKIR ===");
  print("Jenis Kendaraan : $jenisKendaraan");
  print("Lama Parkir     : $lamaParkir jam");
  print("Member          : $member");
  print("Total Bayar     : Rp$totalBayar");
}