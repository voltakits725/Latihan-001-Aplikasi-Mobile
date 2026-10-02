double hitungPersenDiskon(double totalBelanja, bool member) {
  if (totalBelanja >= 100000) {
    return member ? 15 : 10;
  }
  return 0;
}

double hitungPotongan(double totalBelanja, double persenDiskon) {
  double potongan = totalBelanja * persenDiskon / 100;

  return potongan;
}

double hitungTotalBayar(
    double totalBelanja, double potongan) {
  
  double setelahDiskon = totalBelanja - potongan;

  double ongkir;

  if (setelahDiskon < 200000) {
    ongkir = 10000;
  } else {
    ongkir = 0;
  }

  return setelahDiskon + ongkir;
}

void main() {
  double totalBelanja = 150000;
  bool member = true;

  
  double persenDiskon = hitungPersenDiskon(totalBelanja, member);
  double potongan = totalBelanja * (persenDiskon / 100);
  double setelahDiskon = totalBelanja - potongan;

  
  double ongkir = (setelahDiskon < 200000) ? 10000 : 0;
  
  
  double totalBayar = setelahDiskon + ongkir;

  print("Total Belanja : Rp$totalBelanja");
  print("Member        : $member");
  print("Diskon        : $persenDiskon%");
  print("Potongan      : Rp$potongan");
  print("Ongkir        : Rp$ongkir");
  print("Total Bayar   : Rp$totalBayar");
}