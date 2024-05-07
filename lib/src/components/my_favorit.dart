import 'package:flutter/material.dart';
import 'package:ilmuan/pustaka.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// ini adalah class untuk menyimpan data favorite

class MyFavorite extends StatefulWidget {
  const MyFavorite({Key? key}) : super(key: key);

  @override
  State<MyFavorite> createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> {
  DatabaseHelper? dbHelper;

  Future _refresh() async {
    setState(() {});
  }

  Future initDatabase() async {
    await dbHelper!.database();
    setState(() {});
  }

  @override
  void initState() {
    dbHelper = DatabaseHelper();
    initDatabase();
    super.initState();
  }

  Future delete(int id) async {
    await dbHelper!.delete(id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite'),
        surfaceTintColor: Colors.transparent,
      ),
      body: RefreshIndicator(
          onRefresh: _refresh,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: dbHelper != null
                ? FutureBuilder<List<Category>>(
                    future: dbHelper!.all(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if (snapshot.data?.isEmpty ?? true) {
                          return const Center(
                              child: Text(
                            'Belum ada favorite',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ));
                        }
                        return MasonryGridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            Category item = dataList[index];
                            return InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: ((context) {
                                    switch (snapshot.data![index].name) {
                                      case 'Alberd Einstein':
                                        return const AlbertEinstein();
                                      case 'Al Khawarizmi':
                                        return const AlKhawarizmi();
                                      case 'Alessandro Volta':
                                        return const AlessandroVolta();
                                      case 'Alfred Nobel':
                                        return const AlfredNobel();
                                      case 'Alexander Graham Bell':
                                        return const AlexanderGraham();
                                      case 'Antonie van Leeuwenhook':
                                        return const AntonieVanLeeuwenhook();
                                      case 'Antonio Meucci':
                                        return const AntonioMeucci();
                                      case 'Artur Fischer':
                                        return const ArturFischer();
                                      case 'Benjamin Holt':
                                        return const BenjaminHolt();
                                      case 'Cai Lun':
                                        return const CaiLun();
                                      case 'Charles Goodyear':
                                        return const CharlesGoodyear();
                                      case 'Christopher Sholes':
                                        return const ChristopherSholes();
                                      case 'C. Marconi':
                                        return const CMarconi();
                                      case 'Cornelius van Drebbel':
                                        return const CorneliusVanDrebbel();
                                      case 'Dmitri Mendeleev':
                                        return const DmitriMendeleev();
                                      case 'Edward Jenner':
                                        return const Edwardjenner();
                                      case 'Elis G. Otis':
                                        return const ElisGOtis();
                                      case 'Emil Berliner':
                                        return const EmilBerliner();
                                      case 'Ernest Swinton':
                                        return const ErnestSwinton();
                                      case 'Ernst August Friedrich Ruska':
                                        return const ErnstAugustFriedrichRuska();
                                      case 'Evangelista Torricelli':
                                        return const EvangelistaTorricelli();
                                      case 'Felix Hoffmann':
                                        return const FelixHoffmann();
                                      case 'Frank Whittle':
                                        return const FrankWhittle();
                                      case 'Friedrich Karl von Drais':
                                        return const FriedrichKarlvonDrais();
                                      case 'Fritz Pfleumer':
                                        return const FritzPfleumer();
                                      case 'George Eastman':
                                        return const GeorgeEastman();
                                      case 'Gottlieb Daimler':
                                        return const GottliebDaimler();
                                      case 'Hans Lippershey':
                                        return const HansLippershey();
                                      case 'Hans von Ohain':
                                        return const HansVonOhain();
                                      case 'Heinrich Hertz':
                                        return const HeinrichHertz();
                                      case 'Henrich Focke':
                                        return const HenrichFocke();
                                      case 'Hugo Junkers':
                                        return const HugoJunkers();
                                      case 'Igor Ivanovich Sikorsky':
                                        return const IgorIvanovichSikorsky();
                                      case 'Irving Langmuir':
                                        return const IrvingLangmuir();
                                      case 'Isaac Newton':
                                        return const IsacNewton();
                                      case 'James Watt':
                                        return const JamesWatt();
                                      case 'Johann Philipp Reis':
                                        return const JohannPhilippReis();
                                      case 'Melitta Bentz':
                                        return const MelittaBentz();
                                      case 'Michael Faraday':
                                        return const MichaelFaraday();
                                      case 'Samuel F. B. Morse':
                                        return const SamuelFBMorse();
                                      case 'Thomas Alva Edison':
                                        return const ThomasAlvaEdison();
                                      case 'Wernher Von Braun':
                                        return const WernherVonBraun();
                                      case 'Wilbur dan Orville Wright':
                                        return const WilburOrvilleWright();
                                      case 'Wilhelm Conrad Röntgen':
                                        return const WilhelmConradRontgen();
                                      case 'Williarn Sturgeon':
                                        return const WilliarnSturgeon();
                                      case 'Willis Haviland Carrier':
                                        return const WillisHavilandCarrier();
                                      default:
                                        return Scaffold(
                                          appBar: AppBar(),
                                          body: const Center(
                                            child: CircularProgressIndicator(
                                              color: Color.fromARGB(
                                                  255, 86, 173, 89),
                                            ),
                                          ),
                                        );
                                    }
                                  })));
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        height: item.height,
                                        alignment: Alignment.bottomLeft,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(15)),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                snapshot.data![index].image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              //untuk icon Favorite
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                IconButton(
                                                    onPressed: () {
                                                      delete(snapshot
                                                          .data![index].id!);
                                                      showModalBottomSheet(
                                                          context: context,
                                                          backgroundColor:
                                                              const Color
                                                                  .fromARGB(
                                                                  255,
                                                                  223,
                                                                  247,
                                                                  202),
                                                          builder: (context) =>
                                                              Container(
                                                                  height: 60,
                                                                  width: double
                                                                      .infinity,
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                          10),
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      'Berhasil di hapus dari favorite',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            15,
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                  )));
                                                    },
                                                    icon: const Icon(
                                                        Icons.favorite,
                                                        color: Colors.red)),
                                              ],
                                            ),
                                            Container(
                                                width: double.infinity,
                                                margin:
                                                    const EdgeInsets.all(10),
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: const BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      247, 244, 244, 1.8),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(15)),
                                                ),
                                                child: Wrap(
                                                  children: [
                                                    Text(
                                                      snapshot.data![index]
                                                              .text ??
                                                          '',
                                                      style: const TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontFamily: 'Lora',
                                                          fontSize: 15),
                                                    ),
                                                  ],
                                                ))
                                          ],
                                        )),
                                    const SizedBox(height: 5),
                                    Text(
                                      snapshot.data![index].name ?? '',
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Lora'),
                                    ),
                                  ],
                                ));
                          },
                        );
                      } else {
                        return Center(child: Text('Error : ${snapshot.error}'));
                      }
                    })
                : const Center(child: CircularProgressIndicator()),
          )),
    );
  }
}
