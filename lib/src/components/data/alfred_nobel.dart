import 'package:flutter/material.dart';

// class utama file ini dan icon

class AlfredNobel extends StatelessWidget {
  const AlfredNobel({Key? key}) : super(key: key);

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
                'Alfred Nobel',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text('Perjalanan Alfred Nobel: Dari Dinamit ke Hadiah Perdamaian',
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
                    image: AssetImage('assets/images/Alfred_Nobel2.png'),
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
                    '        Alfred Nobel adalah seorang ilmuwan dan penemu kelahiran Swedia yang terkenal karena penemuannya dalam bidang dinamit, yang mengubah dunia konstruksi dan industri pertambangan. Namun, selain itu, ia juga memiliki sejarah kehidupan yang kaya, termasuk keluarga, pendidikan, perjalanan ke luar negeri, serta penciptaan Hadiah Nobel yang menjadi warisan utamanya. \n',
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
                    '\n       Nobel lahir pada tanggal 21 Oktober 1833, di Stockholm, Swedia, dari keluarga yang terkait dengan industri. Ayahnya, Immanuel Nobel, adalah seorang insinyur dan penemu, yang telah membuka bisnis di Rusia. Di Rusia, keluarga Nobel berkembang dan terlibat dalam bisnis industri, terutama dalam pembuatan senjata dan bahan peledak. \n',
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
                    '\n       Alfred Nobel sendiri memiliki minat yang besar dalam ilmu pengetahuan, khususnya kimia dan fisika. Ia melakukan banyak perjalanan ke luar negeri untuk belajar dan bekerja dengan ilmuwan terkenal pada masanya, seperti di Paris di bawah bimbingan Profesor TJ Pelouze. Di sana, ia bertemu dengan Ascanio Sobrero, seorang kimiawan Italia yang menemukan nitrogliserin. \n',
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
                    '\n       Penciptaan dinamit adalah salah satu pencapaian utama Alfred Nobel. Dinamit, yang merupakan campuran nitrogliserin dengan bahan pengikat, memungkinkan peledakan yang lebih terkendali dan efisien, revolusioner dalam industri konstruksi dan pertambangan. Namun, penggunaannya juga memunculkan kontroversi terkait dampaknya terhadap lingkungan dan masyarakat. \n',
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
                    '\n       Selain kontribusinya dalam bidang ilmu pengetahuan dan teknologi, Alfred Nobel juga terkenal karena pendiriannya dalam perdamaian. Setelah melihat dampak negatif dari penemuan-penemuannya dalam bidang senjata, ia mendirikan Hadiah Nobel untuk mempromosikan perdamaian dan kemajuan manusia. Ini adalah warisan terbesarnya yang terus berlanjut hingga saat ini. \n',
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
                    '\n       Meskipun kehidupan Alfred Nobel penuh dengan pencapaian dan inovasi, ia juga mengalami tantangan dan kontroversi. Namun, warisan yang ia tinggalkan, baik dalam bentuk penemuan-penemuannya maupun Hadiah Nobel, telah meninggalkan jejak yang mendalam dalam sejarah dan ilmu pengetahuan dunia. \n',
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
