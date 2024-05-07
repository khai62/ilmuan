import 'package:flutter/material.dart';

// class utama file ini dan icon

class WilburOrvilleWright extends StatelessWidget {
  const WilburOrvilleWright({Key? key}) : super(key: key);

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
                'Wilbur dan Orville Wright',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Penerbangan Keberanian: Kisah Wilbur dan Orville Wright dalam Mewujudkan Impian Terbang',
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
                    image:
                        AssetImage('assets/images/Wilbur_0rville_Wright2.png'),
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
                    '       Wilbur dan Orville Wright adalah dua bersaudara yang terkenal sebagai penemu pesawat terbang pertama yang berhasil diakui secara luas. Mereka lahir pada tahun 1867 dan 1871 di wilayah Dayton, Ohio, AS, sebagai anak kedua dan ketiga dari tujuh bersaudara. Sejak kecil, keduanya telah menunjukkan minat yang besar pada ilmu pengetahuan dan teknologi. \n',
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
                    '\n       Ketertarikan Wilbur dan Orville pada penerbangan dimulai ketika mereka masih muda, terinspirasi oleh artikel-artikel tentang eksperimen penerbangan yang dilakukan oleh ilmuwan terkemuka pada masanya, seperti Otto Lilienthal. Mereka mulai membangun model-model pesawat layang dan melakukan percobaan terbang di bukit-bukit pasir di dekat rumah mereka. \n',
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
                    '\n       Pada tahun 1896, keduanya mendirikan perusahaan pembuatan alat tulis yang sukses di Dayton. Namun, penerbangan tetap menjadi obsesi bagi mereka. Mereka mulai menginvestasikan waktu dan uang mereka dalam pengembangan pesawat terbang yang lebih canggih. \n',
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
                    '\n       Pada tahun 1900, Wilbur dan Orville Wright membangun pesawat terbang bersayap bermotor pertama mereka, yang dikenal sebagai "Wright Flyer I". Setelah serangkaian uji coba yang tidak berhasil, mereka berhasil mencapai penerbangan yang berhasil pada 17 Desember 1903, di Kill Devil Hills, dekat Kitty Hawk, Carolina Utara. Wilbur menjadi pilot pertama yang terbang, memperoleh jarak sekitar 120 kaki dalam penerbangan pertama yang berlangsung selama 12 detik. \n',
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
                    '\n       Penerbangan Wright Flyer I dianggap sebagai tonggak sejarah dalam sejarah penerbangan, karena menandai awal dari era penerbangan yang terus berkembang. Prestasi ini menginspirasi banyak ilmuwan dan insinyur di seluruh dunia untuk mengejar mimpi penerbangan manusia. Wilbur dan Orville Wright terus mengembangkan desain pesawat terbang mereka dan menciptakan banyak inovasi penting dalam penerbangan, menjadikan mereka sebagai tokoh penting dalam sejarah teknologi dan penerbangan. \n',
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
