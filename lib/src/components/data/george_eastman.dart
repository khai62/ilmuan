import 'package:flutter/material.dart';

// class utama file ini dan icon

class GeorgeEastman extends StatelessWidget {
  const GeorgeEastman({Key? key}) : super(key: key);

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
                'George Eastman',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Mengabadikan Momen: Kisah George Eastman dan Perjalanan Fotografi Modern',
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
                    image: AssetImage('assets/images/George_Eastman2.png'),
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
                    '       George Eastman lahir pada 12 Juli 1854, di Waterville, New York, AS. Kehidupannya dimulai dengan tantangan, setelah ayahnya meninggal ketika dia masih muda, membuatnya harus bekerja sejak usia remaja. Namun, ketertarikannya pada fotografi membawanya pada jalan yang menentukan masa depannya. \n',
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
                    '\n       Dia bekerja sebagai klerk di sebuah perusahaan asuransi, namun minatnya pada fotografi terus tumbuh. Pada tahun 1878, Eastman mulai memproduksi pelat fotografi, menghilangkan kebutuhan akan kertas yang basah, dan pada tahun 1880, ia mendirikan Eastman Dry Plate Company, yang kemudian menjadi Eastman Kodak Company. \n',
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
                    '\n       Pada tahun 1888, terobosan besar datang dengan ditemukannya film gulung. Ia memperkenalkan kamera saku pertama yang dilengkapi dengan film gulung pada tahun yang sama, merevolusi cara fotografi dilakukan. Moto perusahaan, "You Press the Button, We Do the Rest," mencerminkan sederhananya dalam menggunakan kamera tersebut. \n',
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
                    '\n       Eastman Kodak tumbuh pesat, menjadi salah satu perusahaan fotografi terbesar di dunia. Dia juga memperkenalkan slogan perusahaan yang terkenal, "Kodak Moment," yang memperkuat citra mereknya. Meskipun sukses secara profesional, Eastman menderita penyakit yang menyakitkan pada akhir hidupnya. \n',
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
                    '\n       Pada tahun 1932, George Eastman meninggal dunia karena bunuh diri, meninggalkan warisan besar dalam perkembangan industri fotografi. Namun, kontribusinya tak hanya dalam bidang bisnis, melainkan juga dalam filantropi, dengan mendirikan Institut Eastman untuk Musim Dingin di Universitas Rochester, yang tetap menginspirasi hingga hari ini. \n',
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
