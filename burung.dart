class Hewan {
  String kaki;
  String makanan;
  String habitat;
  String nama;
  String suara;

  Hewan({
    required this.kaki,
    required this.makanan,
    required this.habitat,
    required this.nama,
    required this.suara,
  }); 
}

class HewanAction extends Hewan {

  HewanAction({
    required String kaki,
    required String makanan,
    required String habitat,
    required String nama,
    required String suara,
  }): super(habitat: habitat,makanan: makanan,kaki: kaki,suara: suara, nama: nama);

  void tulis(kaki, makanan, habitat,  nama) {
    print("Ini Adalah $nama");
    print("$nama Memiliki kaki $kaki");
    print("$nama Memiliki makanan $makanan");
    print("$nama Memiliki habitat $habitat");
  }
  void bersuara(suara) {
    print("rendi Bersuara dengan $suara");
  }
}

void main() {
  HewanAction rendi = HewanAction(
    kaki: "4", makanan: "titid edi", 
    habitat: "gudang beras", 
    nama: "rendi", 
    suara: "kontolllll lupa retri");

  rendi.tulis(rendi.kaki, rendi.makanan, rendi.habitat, rendi.nama);
  rendi.bersuara(rendi.suara);
}
