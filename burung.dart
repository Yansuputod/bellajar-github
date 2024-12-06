import 'dart:math';

void main() {
  BurungAction walet = BurungAction(
    gerak: "Renang",
    suara: "Hidup Papa Brayen",
    makanan: "biji bijian",
  );

  Aksi aksi = Aksi();

  aksi.main("walet", walet.gerak, walet.makanan);
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

class BurungAction extends Burung {
  late final String kelamin;

  BurungAction({
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

class Aksi {
  void main(
    String nama_burung,
    String gerak,
    String makanan,
  ) {
    print("nama_burung: " + nama_burung);
    print("gerak: " + gerak);
    print("makanan: " + makanan);
  }
}
