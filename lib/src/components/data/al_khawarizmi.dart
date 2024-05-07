import 'package:flutter/material.dart';

// class utama file ini dan icon

class AlKhawarizmi extends StatelessWidget {
  const AlKhawarizmi({Key? key}) : super(key: key);

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
                'Al Khawarizmi',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Melukis Kisah Angka dan Rumus: Al-Khwārizmī, Maestro Matematika dari Khwarezmia',
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
                    image: AssetImage('assets/images/Al_Khawarizmi1.png'),
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
                    '       Muḥammad bin Mūsā al-Khwārizmī al-majousī al-katarbalī lahir sekitar tahun 780 di Khwarezmia (sekarang Khiva, Uzbekistan) dan wafat sekitar tahun 850 di Bagdad. Selama hidupnya, ia mengabdikan diri sebagai ahli matematika, astronomi, astrologi, dan geografi. \n',
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
                text: '\nKontribusi Matematika dan Perkenalan Angka Arab \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Buku pertamanya, "Al Kitaab al Muhtasar fii Hisaab al jabr wa\'l Muqabaala," menyajikan solusi sistematik untuk persamaan linear dan kuadrat, menjadikannya Bapak Aljabar. Selain itu, ia memperkenalkan angka Arab yang kemudian diadopsi sebagai standar di berbagai bahasa dan diperkenalkan sebagai Sistem Penomoran Posisi Desimal di dunia Barat. \n',
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
                text: '\nWarisan dalam Bahasa dan Ilmu Pengetahuan \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Selain kontribusinya dalam matematika, namanya juga memberi pengaruh pada kebahasaan. Kata "aljabar" berasal dari kata "al-Jabr" dalam salah satu bukunya, sementara kata "algorisme" dan "algoritma" diambil dari nama latinisasi namanya. Warisannya juga terdapat dalam bahasa Spanyol dan Portugis. \n',
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
                text: '\nBiografi dan Agama \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Sedikit yang diketahui tentang hidupnya, termasuk tempat lahirnya. Julukan "al-Majūsī" mengarahkan pada kemungkinan penganut agama Zoroastrian, namun dia diyakini menjadi seorang Muslim. \n',
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
                text: '\nKarya-karya Berpengaruh \n',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Arial',
                  height: 1.5,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
              TextSpan(
                text:
                    '\n       Karya-karyanya meliputi bidang matematika, astronomi, dan astrologi, serta revolusioner dalam pembuatan peta dunia. Buku-bukunya, seperti "Kitāb al-mukhtaṣar fī ḥisāb al-jabr wa-l-muqābala" dan "Zīj al-sindhind," berkontribusi besar dalam perkembangan ilmu pengetahuan. \n',
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
