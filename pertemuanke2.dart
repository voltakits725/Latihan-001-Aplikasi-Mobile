String tentukanGrade(double nilai){
  
  if(nilai >= 85){
    return 'A';
  }else if(nilai >= 70){
    return 'B';
  }else if(nilai >= 60){
    return 'C';
  }
    return 'D hahahaha';
  
}

String getStatus(int umur){
  return umur >= 17 ? 'Dewasa' : 'Anak-anak';
  
}

void cetakStatusGrade(String grade){
  String keterangan = switch(grade){
    'A' => 'Sangat Baik',
    'B' => 'Baik',
    'C' => 'Cukup',
    _ => 'Bodoh, Hama',
  };
  print(keterangan);
}

void cetakStatusKuliah(String hari){
  
  switch(hari){
    case 'Sabtu':
      print('Kuliah pengganti');
    case 'Minggu':
      print('libur');
    default:
      print('hari kuliah');
  }
}

void main(){
  print(tentukanGrade(90));
  print(getStatus(20));
  cetakStatusKuliah('Sabtu');
  cetakStatusGrade('D');
 
}