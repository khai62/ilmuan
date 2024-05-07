import 'package:flutter/material.dart';

// class utama file ini dan icon

class GottliebDaimler extends StatelessWidget {
  const GottliebDaimler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 40,
        bottom: 20,
        left: 10,
      ),
      color: const Color.fromARGB(255, 223, 247, 202),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 14),
          const _MyScroll(),
        ],
      ),
    );
  }
}

// class scroll

class _MyScroll extends StatelessWidget {
  const _MyScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _MyText(),
          SizedBox(height: 15),
          _MyContainer(),
          SizedBox(height: 14),
          _MyContent(),
        ],
      ),
    ));
  }
}

// class text di atas container

class _MyText extends StatelessWidget {
  const _MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gottlieb Daimler',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Revolusi Mesin: Kisah Gottlieb Daimler dan Pembangunan Mobil Modern',
                  style: TextStyle(
                      fontSize: 20,
                      height: 1.5,
                      color: Colors.black,
                      fontFamily: 'Lora',
                      decoration: TextDecoration.none,
                      fontStyle: FontStyle.italic)),
            ],
          )),
    );
  }
}

// Container image

class _MyContainer extends StatelessWidget {
  const _MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
          width: double.infinity,
          height: 250,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 170, 211, 171),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(50.0, 50.0),
                  bottomLeft: Radius.elliptical(50.0, 50.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 320,
                height: 247,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(50.0, 50.0),
                      bottomLeft: Radius.elliptical(50.0, 50.0)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/Gottlieb_Daimler2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class _MyContent extends StatelessWidget {
  const _MyContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(children: [
              TextSpan(
                text:
                    '       Gottlieb Daimler lahir pada 17 Maret 1834 di Schorndorf, Kerajaan Württemberg, yang saat itu merupakan bagian dari Konfederasi Jerman. Minatnya dalam mesin dan mekanika mulai terlihat sejak usia muda, dan segera setelah menyelesaikan masa pelatihan sebagai tukang pengrajin, dia melanjutkan pendidikannya di bidang teknik mesin di Stuttgart. Kariernya dimulai sebagai tukang pengrajin, tetapi niatnya lebih besar: mengubah dunia dengan inovasi teknologi. \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Pada tahun 1872, Daimler bertemu dengan Wilhelm Maybach, seorang insinyur brilian yang kemudian menjadi mitra seumur hidupnya dalam penciptaan mesin pembakaran dalam yang revolusioner. Mereka berhasil mengembangkan mesin pembakaran dalam pertama yang praktis dan efisien untuk digunakan di kendaraan pada tahun 1885. Inilah yang menjadi tonggak penting dalam sejarah otomotif, karena mesin ini menjadi dasar bagi mobil modern. \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Daimler dan Maybach juga menciptakan prototipe mobil pertama, yang dikenal sebagai "Reitwagen" atau "sepeda motor". Ini adalah langkah berani dalam revolusi transportasi, membawa visi mereka tentang mobilisasi massal lebih dekat dengan kenyataan. Pada tahun 1886, Daimler mendaftarkan paten atas penemuan tersebut, memberikan dasar hukum bagi perkembangan otomotif selanjutnya. \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Tak hanya seorang penemu, Daimler juga menjadi pengusaha sukses dengan mendirikan Daimler Motoren Gesellschaft (DMG) pada tahun 1890 bersama Maybach dan beberapa investor lainnya. Perusahaan ini menjadi tonggak penting dalam industri otomotif, dan pada tahun 1926, bergabung dengan Benz & Cie. untuk membentuk Mercedes-Benz, salah satu produsen mobil paling terkenal di dunia. \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Namun, sebelum kesuksesan besar itu, Daimler meninggal pada 6 Maret 1900 di Cannstatt, Jerman. Meskipun ia tidak hidup cukup lama untuk melihat sepenuhnya dampak revolusi otomotif yang ia inisiasi, warisan dan kontribusinya terhadap perkembangan teknologi mesin dan mobil terus dihargai hingga hari ini. Gottlieb Daimler tetap menjadi salah satu tokoh paling berpengaruh dalam sejarah industri otomotif. \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
            ])));
  }
}
