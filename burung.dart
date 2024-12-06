import 'dart:math';

void main() {
  BurungBerkicau walet = BurungBerkicau(
    gerak: "terbang",
    suara: "kiw kiw",
    makanan: "biji bijian",
  );

  walet.berkicau();
  print("Kelamin walet: ${walet.kelamin}");
}

class Burung {
  String gerak;
  String suara;
  String makanan;

  Burung({
    required this.gerak,
    required this.suara,
    required this.makanan,
  });
}

class BurungBerkicau extends Burung {
  late final String kelamin;

  BurungBerkicau({
    required String gerak,
    required String suara,
    required String makanan,
  }) : super(gerak: gerak, suara: suara, makanan: makanan) {
    KelaminRandom _kelaminRandom = KelaminRandom();
    kelamin = _kelaminRandom.randomKelamin();
  }

  void berkicau() {
    for (var v = 0; v < 3; v++) {
      print("Berkicau: $suara");
    }
  }
}

class KelaminRandom {
  String? kelamin;

  String randomKelamin() {
    var random = Random();
    kelamin = random.nextBool() ? "Laki-laki" : "Perempuan";
    return kelamin!;
  }
}
