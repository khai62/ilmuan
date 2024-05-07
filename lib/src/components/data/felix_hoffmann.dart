import 'package:flutter/material.dart';

// class utama file ini dan icon

class FelixHoffmann extends StatelessWidget {
  const FelixHoffmann({Key? key}) : super(key: key);

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
                'Felix Hoffmann',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Perjalanan Menuju Penemuan Terbesar: Kisah Felix Hoffmann dan Aspirin',
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
                    image: AssetImage('assets/images/Felix_Hoffmann2.png'),
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
                    '       Felix Hoffmann lahir pada 21 Januari 1868 di Ludwigsburg, Jerman. Dia adalah seorang ahli kimia yang menghabiskan sebagian besar karirnya di Bayer AG, sebuah perusahaan farmasi terkemuka saat itu. \n',
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
                    '\n       Sejak dini, Hoffmann menunjukkan minat yang kuat dalam kimia. Setelah menyelesaikan pendidikannya di sekolah menengah, ia melanjutkan studinya di Universitas Munich dan Universitas Berlin, di mana ia mendalami ilmu kimia. \n',
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
                    '\n       Pada tahun 1897, Hoffmann bergabung dengan Bayer AG sebagai ahli kimia. Tugas utamanya adalah mencari cara untuk mengurangi efek samping dari obat antiinflamasi yang ada, seperti salisilat. Hoffmann berhasil mensintesis senyawa baru yang disebut asetilsalisilat pada tanggal 10 Agustus 1897, yang kemudian dikenal sebagai aspirin. \n',
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
                    '\n       Aspirin, yang pertama kali diproduksi dalam bentuk tablet pada tahun 1899, segera menjadi salah satu obat paling populer di dunia. Ini tidak hanya efektif sebagai pengurang rasa sakit dan antiinflamasi, tetapi juga memiliki sedikit efek samping dibandingkan dengan obat lain pada saat itu. \n',
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
                    '\n       Penemuan aspirin oleh Hoffmann memberikan dampak besar bagi dunia kedokteran dan farmasi. Ini membuka jalan bagi pengembangan obat-obatan yang lebih aman dan efektif untuk pengobatan berbagai kondisi medis. \n',
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
                    '\n       Meskipun prestasinya besar, Hoffmann tetap rendah hati. Dia terus bekerja di Bayer AG hingga pensiunnya pada tahun 1928, dan meninggal pada 8 Februari 1946, meninggalkan warisan yang tak terlupakan dalam sejarah ilmu farmasi. \n',
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
