import 'package:flutter/material.dart';

// class utama file ini dan icon

class WilhelmConradRontgen extends StatelessWidget {
  const WilhelmConradRontgen({Key? key}) : super(key: key);

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
                'Wilhelm Conrad Röntgen',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text('Sinar-X: Cahaya yang Mengungkap Misteri Tubuh Manusia',
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
                        AssetImage('assets/images/Wilhelm_Conrad_Röntgen2.png'),
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
                    '       Wilhelm Conrad Röntgen lahir pada 27 Maret 1845 di kota Lennep, yang saat itu merupakan bagian dari Kerajaan Prusia. Dia menempuh pendidikan di Universitas Zurich dan menjadi seorang fisikawan yang sangat berbakat. Pada tahun 1895, saat melakukan eksperimen dengan tabung kaca yang dihantarkan arus listrik, Röntgen menemukan sesuatu yang sangat mengejutkan: radiasi yang dapat menembus benda padat dan memproyeksikan bayangan mereka pada sebuah layar luminesens. \n',
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
                    '\n       Penemuannya ini, yang kemudian dikenal sebagai sinar-X, menciptakan sensasi besar di komunitas ilmiah pada masa itu. Röntgen terkejut dengan penemuan itu sendiri dan dengan cepat menyadari potensinya dalam berbagai bidang, terutama dalam diagnosis medis. Dia dengan cepat mempublikasikan hasil penemuannya, dan pada tahun yang sama, dokumen yang berjudul "On a New Kind of Rays" diterbitkan dalam jurnal ilmiah. \n',
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
                    '\n       Pengakuan atas penemuannya datang dengan cepat, dan pada tahun 1901, Röntgen dianugerahi Hadiah Nobel dalam Fisika, menjadikannya orang pertama yang menerima penghargaan ini. Meskipun demikian, Röntgen tetap rendah hati dan menolak untuk mematenkan penemuannya, memilih untuk membaginya secara luas demi kemajuan ilmu pengetahuan dan manfaat kemanusiaan. \n',
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
                    '\n       Sinar-X segera digunakan secara luas dalam bidang kedokteran untuk diagnosis penyakit dan cedera, menyelamatkan nyawa dan mengubah cara medis melakukan diagnosis. Penemuan ini juga membuka jalan bagi pengembangan teknologi radiografi dan tomografi yang kita kenal saat ini. Röntgen meninggal pada tahun 1923, tetapi warisannya dalam ilmu pengetahuan dan kedokteran tetap hidup melalui penggunaan sinar-X yang terus berkembang hingga saat ini. \n',
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
