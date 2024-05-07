import 'package:ilmuan/pustaka.dart';

// class dan constructor list
class Category {
  final int? id;
  final String? name;
  final String? text;
  final dynamic route;
  final dynamic image;
  final dynamic height;

  Category({
    this.id,
    this.name,
    this.text,
    this.height,
    this.image,
    this.route,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      text: json['text'],
      height: json['height'],
      image: json['image'],
      route: json['route'],
    );
  }
}

// data list
List<Category> dataList = [
  Category(
      name: 'Alberd Einstein',
      text: 'Teori relativitas',
      height: 220.0,
      image: 'assets/images/einsten1.png',
      route: const AlbertEinstein()),
  Category(
      name: 'Al Khawarizmi',
      text: 'Teori aljabar (penulis Aritmetika)',
      height: 260.0,
      image: 'assets/images/Al_Khawarizmi2.png',
      route: const AlKhawarizmi()),
  Category(
      name: 'Alessandro Volta',
      text: 'Baterai',
      height: 220.0,
      image: 'assets/images/Alessandro_Volta1.png',
      route: const AlessandroVolta()),
  Category(
      name: 'Alfred Nobel',
      text: 'Bom dinamit',
      height: 220.0,
      image: 'assets/images/Alfred_Nobel1.png',
      route: const AlfredNobel()),
  Category(
      name: 'Alexander Graham Bell',
      text: 'Telepon Kabel (Versi Lama), Piringan hitam',
      height: 220.0,
      image: 'assets/images/Alexander_Graham1.png',
      route: const AlexanderGraham()),
  Category(
      name: 'Antonie van Leeuwenhook',
      text: 'Lensa',
      height: 220.0,
      image: 'assets/images/AntonievanLeeuwenhook1.png',
      route: const AntonieVanLeeuwenhook()),
  Category(
      name: 'Antonio Meucci',
      text: 'Telepon (Versi Baru 2002)',
      height: 220.0,
      image: 'assets/images/Antonio_Meucci1.png',
      route: const AntonioMeucci()),
  Category(
      name: 'Artur Fischer',
      text: 'Dowel Fischer',
      height: 220.0,
      image: 'assets/images/ArturFischer2.png',
      route: const ArturFischer()),
  Category(
      name: 'Benjamin Holt',
      text: 'Traktor',
      height: 220.0,
      image: 'assets/images/Benjamin_Holt2.png',
      route: const BenjaminHolt()),
  Category(
      name: 'Cai Lun',
      text: 'Kertas',
      height: 220.0,
      image: 'assets/images/Cailun1.png',
      route: const CaiLun()),
  Category(
      name: 'Charles Goodyear',
      text: 'Ban karet vulkanisasi',
      height: 220.0,
      image: 'assets/images/CharlesGoodyear1.png',
      route: const CharlesGoodyear()),
  Category(
      name: 'Christopher Sholes',
      text: 'Mesin ketik QWERTY',
      height: 220.0,
      image: 'assets/images/ChristopherSholes1.png',
      route: const ChristopherSholes()),
  Category(
      name: 'C. Marconi',
      text: 'Radio',
      height: 220.0,
      image: 'assets/images/CMarconi1.png',
      route: const CMarconi()),
  Category(
      name: 'Cornelius van Drebbel',
      text: 'Kapal selam',
      height: 220.0,
      image: 'assets/images/CorneliusvanDrebbel1.png',
      route: const CorneliusVanDrebbel()),
  Category(
      name: 'Dmitri Mendeleev',
      text: 'Tabel periodik',
      height: 220.0,
      image: 'assets/images/DmitriMendeleev1.png',
      route: const DmitriMendeleev()),
  Category(
      name: 'Edward Jenner',
      text: 'Mengembangkan penelitian vaksin cacar',
      height: 220.0,
      image: 'assets/images/Edwardjenner1.png',
      route: const Edwardjenner()),
  Category(
      name: 'Elis G. Otis',
      text: 'Rem elevator/lift',
      height: 220.0,
      image: 'assets/images/ElisGOtis1.png',
      route: const ElisGOtis()),
  Category(
    name: 'Emil Berliner',
    text: 'Alat rekaman piringan hitam',
    height: 220.0,
    image: 'assets/images/EmilBerliner1.png',
    route: const EmilBerliner(),
  ),
  Category(
    name: 'Ernest Swinton',
    text: 'Tank',
    height: 220.0,
    image: 'assets/images/Ernest_Swinton1.png',
    route: const ErnestSwinton(),
  ),
  Category(
    name: 'Ernst August Friedrich Ruska',
    text: 'Mikroskop elektron',
    height: 220.0,
    image: 'assets/images/Ernst_August_Friedrich_Ruska1.png',
    route: const ErnstAugustFriedrichRuska(),
  ),
  Category(
    name: 'Evangelista Torricelli',
    text: 'Barometer air raksa',
    height: 220.0,
    image: 'assets/images/Evangelista_Torricelli1.png',
    route: const EvangelistaTorricelli(),
  ),
  Category(
    name: 'Felix Hoffmann',
    text: 'Aspirin',
    height: 220.0,
    image: 'assets/images/Felix_Hoffmann1.png',
    route: const FelixHoffmann(),
  ),
  Category(
    name: 'Frank Whittle',
    text: 'Mesin jet turbo',
    height: 220.0,
    image: 'assets/images/Frank_Whittle1.png',
    route: const FrankWhittle(),
  ),
  Category(
    name: 'Friedrich Karl von Drais',
    text: 'Sepeda',
    height: 220.0,
    image: 'assets/images/Friedrich_Karl_von_Drais1.png',
    route: const FriedrichKarlvonDrais(),
  ),
  Category(
    name: 'Fritz Pfleumer',
    text: 'Tape Audio/pita rekam',
    height: 220.0,
    image: 'assets/images/Fritz_Pfleumer1.png',
    route: const FritzPfleumer(),
  ),
  Category(
    name: 'George Eastman',
    text: 'Film gulung dan pendiri KODAK',
    height: 220.0,
    image: 'assets/images/George_Eastman1.png',
    route: const GeorgeEastman(),
  ),
  Category(
    name: 'Gottlieb Daimler',
    text: 'Mobil dan mesin pembakaran internal.',
    height: 220.0,
    image: 'assets/images/Gottlieb_Daimler1.png',
    route: const GottliebDaimler(),
  ),
  Category(
    name: 'Hans Lippershey',
    text: 'Teleskop',
    height: 220.0,
    image: 'assets/images/Hans_Lippershey1.png',
    route: const HansLippershey(),
  ),
  Category(
    name: 'Hans von Ohain',
    text: 'Mesin jet',
    height: 220.0,
    image: 'assets/images/Hans_von_Ohain1.png',
    route: const HansVonOhain(),
  ),
  Category(
    name: 'Heinrich Hertz',
    text: '	Teori gelombang elektromagnetik cahaya dan elektromagnetik',
    height: 220.0,
    image: 'assets/images/Heinrich_Hertz1.png',
    route: const HeinrichHertz(),
  ),
  Category(
    name: 'Henrich Focke',
    text: 'Pengembang sistem propulsi poros turbo untuk helikopter',
    height: 220.0,
    image: 'assets/images/Henrich_Focke1.png',
    route: const HenrichFocke(),
  ),
  Category(
    name: 'Hugo Junkers',
    text:
        'Pesawat udara dari bahan logam serta penerapan motor disel untuk penerbangan',
    height: 220.0,
    image: 'assets/images/Hugo_Junkers1.png',
    route: const HugoJunkers(),
  ),
  Category(
    name: 'Igor Ivanovich Sikorsky',
    text: 'Helikopter modern',
    height: 220.0,
    image: 'assets/images/Igor_Ivanovich_Sikorsky1.png',
    route: const IgorIvanovichSikorsky(),
  ),
  Category(
    name: 'Irving Langmuir',
    text: 'Kawat pijar dan tabung vakum tinggi',
    height: 220.0,
    image: 'assets/images/Irving_Langmuir1.png',
    route: const IrvingLangmuir(),
  ),
  Category(
    name: 'Isaac Newton',
    text: 'Hukum gravitasi',
    height: 220.0,
    image: 'assets/images/Isaac_Newton1.png',
    route: const IsacNewton(),
  ),
  Category(
    name: 'James Watt',
    text: 'Mesin uap',
    height: 220.0,
    image: 'assets/images/James_Watt1.png',
    route: const JamesWatt(),
  ),
  Category(
    name: 'Johann Philipp Reis',
    text: 'Telepon',
    height: 220.0,
    image: 'assets/images/Johann_Philipp_Reis1.png',
    route: const JohannPhilippReis(),
  ),
  Category(
    name: 'Melitta Bentz',
    text: 'Penyaring kopi pertama',
    height: 220.0,
    image: 'assets/images/Melitta_Bentz1.png',
    route: const MelittaBentz(),
  ),
  Category(
    name: 'Michael Faraday',
    text: 'Dinamo',
    height: 220.0,
    image: 'assets/images/Michael_Faraday1.png',
    route: const MichaelFaraday(),
  ),
  Category(
    name: 'Samuel F. B. Morse',
    text: 'Telegraf',
    height: 220.0,
    image: 'assets/images/Samuel_Morse1.png',
    route: const SamuelFBMorse(),
  ),
  Category(
    name: 'Thomas Alva Edison',
    text: 'Bola lampu, Proyektor film',
    height: 220.0,
    image: 'assets/images/Thomas_Alva_Edison1.png',
    route: const ThomasAlvaEdison(),
  ),
  Category(
    name: 'Wernher Von Braun',
    text: 'Pengembang teknologi roket',
    height: 220.0,
    image: 'assets/images/Wernher_Von_Braun1.png',
    route: const WernherVonBraun(),
  ),
  Category(
    name: 'Wilbur dan Orville Wright',
    text: 'Pesawat terbang',
    height: 220.0,
    image: 'assets/images/Wilbur_0rville_Wright1.png',
    route: const WilburOrvilleWright(),
  ),
  Category(
    name: 'Wilhelm Conrad Röntgen',
    text: 'Sinar-X',
    height: 220.0,
    image: 'assets/images/Wilhelm_Conrad_Röntgen1.png',
    route: const WilhelmConradRontgen(),
  ),
  Category(
      name: 'Williarn Sturgeon',
      text: 'Elektromagnet',
      height: 220.0,
      image: 'assets/images/Williarn_Sturgeon1.png',
      route: const WilliarnSturgeon()),
  Category(
    name: 'Willis Haviland Carrier',
    text: 'AC Modern',
    height: 220.0,
    image: 'assets/images/Willis_Haviland_Carrier1.png',
    route: const WillisHavilandCarrier(),
  ),
];
