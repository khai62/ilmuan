import 'package:flutter/material.dart';

// class utama file ini dan icon

class JohannPhilippReis extends StatelessWidget {
  const JohannPhilippReis({Key? key}) : super(key: key);

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
                'Johann Philipp Rei',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Suara dari Kabel: Kisah Johann Philipp Reis dan Telepon Pertamanya',
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
                    image: AssetImage('assets/images/Johann_Philipp_Reis2.png'),
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
                    '       Johann Philipp Reis lahir pada 7 Januari 1834, di Gelnhausen, Hessen, Jerman. Sejak muda, ia menunjukkan minat yang besar dalam ilmu pengetahuan dan teknologi. Setelah menempuh pendidikan di Universitas Frankfurt, Reis menjadi seorang guru fisika di sebuah sekolah menengah di Friedrichsdorf. \n',
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
                    '\n       Pada tahun 1860, Reis mulai bekerja pada proyek untuk mengembangkan alat komunikasi jarak jauh. Dia tertarik pada penemuan telegraf yang sudah ada, tetapi ingin mengembangkan alat yang dapat mengirimkan suara, bukan hanya sinyal Morse. Pada tahun 1861, Reis berhasil menciptakan alat yang disebutnya "telefoni". \n',
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
                    '\n       Telefoni Reis menggunakan prinsip osilasi elektromagnetik untuk mentransmisikan suara melalui kabel tembaga. Meskipun awalnya dirancang sebagai alat untuk mentransfer musik, Reis segera menyadari potensinya untuk berkomunikasi verbal. Pada tahun 1862, ia berhasil melakukan percobaan pertama mentransmisikan suara manusia melalui telefoni. \n',
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
                    '\n       Pada tahun 1863, Reis mempresentasikan penemuannya kepada masyarakat ilmiah di Jerman. Namun, meskipun ada minat yang besar, telepon Reis memiliki banyak kekurangan dalam kinerjanya. Suara yang dihasilkan terkadang tidak jelas, dan alatnya tidak dapat menghasilkan suara yang konsisten. \n',
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
                    '\n       Meskipun demikian, Reis terus memperbaiki desain dan kinerja teleponnya. Namun, sebelum dia bisa melihat keberhasilannya, ia meninggal dunia pada usia 40 tahun pada tahun 1874 karena tuberkulosis. Meskipun teleponnya tidak pernah menjadi sukses komersial, kontribusi Reis pada perkembangan telekomunikasi diakui oleh banyak orang. \n',
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
