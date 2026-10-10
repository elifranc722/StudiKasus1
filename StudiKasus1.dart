import 'dart:io';

void main(){
var jalan = true;
List<Map<dynamic, dynamic>> BBM = [];

void menu_utama(){
  print("===== PROGRAM PEMBAYARAN SPBU =====");
  print("1. Input jenis BBM baru");
  print("2. Input hitung pembayaran");
  print("3.Tentang programmer");
  print("4. Keluar");
}

void input_BBM(){
  print("===== INPUT JENIS BBM BARU =====");
  stdout.write("Kode BBM: ");
    String kode_bbm = stdin.readLineSync()!;
  stdout.write("Nama BBM: ");
    String nama_bbm = stdin.readLineSync()!;
  stdout.write("Harga per liter: ");
    int harga_bbm = int.parse(stdin.readLineSync()!);
  print("=================================");

  BBM.add({
    'kode':kode_bbm,
    'nama':nama_bbm,
    'harga':harga_bbm,
  });

  print("Data BBM berhasil ditambahkan!");
}

void hitung_pembayaran(){
  print("=== PROGRAM PEMBAYARAN SPBU ===");
  print("List jenis BBM:");

  for(int i=0; i < BBM.length; i++){
    print("${i+1}. ${BBM[i]['kode']} | ${BBM[i]['nama']} | Rp ${BBM[i]['harga']}");
  }

  stdout.write("Nomor urut BBM: ");
    int nomor_urut = int.parse(stdin.readLineSync()!);
  stdout.write("Nama pembeli: ");
    String nama_pembeli = stdin.readLineSync()!;
  stdout.write("Jumlah liter: ");
    int liter = int.parse(stdin.readLineSync()!);
  
  int total_pembayaran = liter * BBM[nomor_urut - 1]['harga'] as int;
  print("Total pembayaran: Rp $total_pembayaran");
}

void tentang_programmer(){
  print("Nama: Eliza Francisca");
  print("NPM: 25421872");
  print("Kelas: INF 3A");
  print("Program Studi: Teknik Informatika");
}

while (jalan == true){
  menu_utama();
  stdout.write("Pilihan Anda: ");
  String pilihan = stdin.readLineSync()!;

  switch(pilihan){
    case '1':
      input_BBM();
      break;
    case '2':
      hitung_pembayaran();
      break;
    case '3':
      tentang_programmer();
      break;
    case '4':
      print("Terima kasih telah menggunakan");
      print('Program Pembayaran SPBU!');
      print("Program selesai.");
      exit(0);
  }
}
}