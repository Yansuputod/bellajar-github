
void main(){
  Burung_berkicau walet = Burung_berkicau(
    gerak: "terbang",suara: "kiw kiw", makanan: "biji bijian"
  );

  walet.berkicau();
}

class Burung{

  String gerak;
  String suara;
  String makanan;

  Burung({
    required this.gerak,
    required this.suara,
    required this.makanan,
  });

}

class Burung_berkicau extends Burung {
  Burung_berkicau({
    required String gerak,
    required String suara,
    required String makanan,
  }) : super(gerak: gerak, suara: suara, makanan: makanan);

  void berkicau() {
    for (var v = 0; v < 5; v++) {
      print("Berkicau: $suara");
    }
  }
}
