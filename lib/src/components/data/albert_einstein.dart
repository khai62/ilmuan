import 'package:flutter/material.dart';

// class utama file ini dan icon

class AlbertEinstein extends StatelessWidget {
  const AlbertEinstein({Key? key}) : super(key: key);

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
                'Albert Einstein',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 117, 24, 24),
                    fontFamily: 'Lora',
                    decoration: TextDecoration.none),
              ),
              SizedBox(height: 10),
              Text(
                  'Perjalanan dan Kematian Albert Einstein: Jejak Kecerdasan yang Elegan',
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
                    image: AssetImage('assets/images/einsten2.png'),
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
                    '       Albert Einstein (14 Maret 1879 – 18 April 1955) adalah fisikawan teoretis kelahiran Jerman, yang secara luas diakui sebagai salah satu ilmuwan terbesar sepanjang masa. Einstein dikenal atas pengembangan teori relativitas, dan kontribusinya terhadap teori mekanika kuantum. \n',
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
                    '\n       Salah satu karyanya yang paling terkenal adalah rumus kesetaraan massa-energi E = mc², yang dianggap sebagai "persamaan paling terkenal di dunia". Einstein dianugerahi Nobel Fisika pada tahun 1921 untuk penemuannya tentang hukum efek fotolistrik, sebuah langkah penting dalam pengembangan teori kuantum. \n',
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
                    '\n       Pada awal kariernya, Einstein merasa bahwa mekanika Newton tidak mampu menyatukan hukum mekanika klasik dengan hukum medan elektromagnetik. Hal ini mendorongnya untuk mengembangkan teori relativitas khusus saat bekerja di Kantor Paten Swiss di Bern antara tahun 1902 dan 1909. \n',
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
                    '\n       Namun, ia kemudian menyadari bahwa prinsip relativitasnya juga dapat diterapkan pada medan gravitasi, yang menghasilkan teori relativitas umum yang diterbitkannya pada tahun 1916. Einstein juga menyelidiki masalah dalam mekanika statistika dan teori kuantum, memberikan kontribusi pada pemahaman tentang teori partikel dan gerak molekul. \n',
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
                    '\n       Pada tahun 1917, ia menggunakan teori relativitas umum untuk memodelkan struktur alam semesta. Setelah tinggal di Swiss selama beberapa tahun dan menerima gelar PhD dari Universitas Zurich pada tahun 1905, Einstein pindah ke Berlin untuk mengajar di Akademi Sains Prusia. \n',
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
                    '\n       Namun, ketika Hitler berkuasa di Jerman pada tahun 1933, Einstein memilih untuk tidak kembali karena latar belakang Yahudinya. Ia kemudian menetap di Amerika Serikat dan menjadi warga negara Amerika pada tahun 1940. Selama Perang Dunia II, Einstein mendukung Sekutu, tetapi menentang penggunaan senjata nuklir. \n',
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
                    '\n       Ia mengabdikan dirinya di Institute for Advanced Study di Princeton, New Jersey, hingga kematiannya pada tahun 1955. Prestasi intelektual dan orisinalitasnya menjadikan nama "Einstein" sinonim dengan "genius". Eugene Wigner menggambarkan pemahaman dan pemikiran Einstein sebagai sesuatu yang sangat luar biasa, melebihi bahkan ilmuwan besar lainnya seperti John von Neumann. \n',
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
                text: '\nKehidupan Awal dan Pendidikan \n',
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
                    '\n       Albert Einstein lahir di Ulm, Kerajaan Württemberg, Kekaisaran Jerman, pada tanggal 14 Maret 1879. Orang tuanya adalah Hermann Einstein, seorang agen penjualan dan insinyur, dan Pauline Koch. \n',
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
                    '\n       Pada tahun 1880, keluarganya pindah ke Munich, tempat ayah Einstein dan pamannya Jakob mendirikan Elektrotechnische Fabrik J. Einstein & Cie, sebuah perusahaan yang memproduksi peralatan listrik dengan memanfaatkan arus searah. Keluarga Einstein adalah penganut Yahudi Ashkenazi yang tidak taat, dan Albert bersekolah di SD Katolik di Munich, selama tiga tahun sejak usia lima tahun. \n',
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
                    '\n       Pada usia 8 tahun, ia dipindahkan ke Gimnasium Luitpold (kini bernama Gimnasium Albert Einstein), tempat ia menempuh pendidikan SMP dan SMA sebelum meninggalkan Kekaisaran Jerman tujuh tahun kemudian. Pada tahun 1894, perusahaan Hermann dan Jakob kalah tender dalam proyek memasok kota Munich dengan penerangan listrik, karena perusahaannya tidak memiliki modal untuk mengubah peralatan dari standar arus searah (DC) menjadi standar arus bolak-balik (AC) yang lebih efisien. \n',
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
                    '\n       Kekalahan ini menyebabkan dijualnya pabrik di Munich. Dalam rangka mencari usaha lain, keluarga Einstein pindah ke Italia, pertama ke Milan dan beberapa bulan kemudian pindah ke Pavia. Ketika keluarganya pindah ke Pavia, Einstein, saat itu berusia 15 tahun, tetap tinggal di Munich untuk menyelesaikan sekolahnya di Gimnasium Luitpold. \n',
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
                    '\n       Ayahnya ingin ia mempelajari teknik listrik, tetapi Einstein berselisih dengan pihak sekolah dan membenci metode mengajar guru-gurunya di sekolah. Einstein kelak menulis bahwa semangat belajar dan pemikiran kreatifnya lenyap akibat hafalan pelajaran yang ketat. Pada akhir Desember 1894, Einstein berangkat ke Italia untuk mengunjungi keluarganya di Pavia, setelah sebelumnya berhasil meyakinkan pihak sekolah agar memperbolehkannya libur dengan menggunakan surat dokter. \n',
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
                    '\n       Selama di Italia, Einstein menulis esai pendek berjudul "Investigasi Ether dalam Medan Magnet". Einstein unggul dalam pelajaran matematika dan fisika sejak dini, meraih nilai matematika lebih tinggi dari teman sekelasnya selama bertahun-tahun. \n',
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
                    '\n       Ketika berusia 12 tahun, Einstein mempelajari sendiri aljabar dan geometri Euklides selama musim panas. Einstein juga berhasil membuktikan sendiri kebenaran teorema Pythagoras saat berusia 12 tahun. Menurut pernyataan guru les keluarga bernama Max Talmud, setelah ia memberikan buku teks geometri kepada Einstein yang berusia 12 tahun, dalam waktu singkat "[Einstein] telah menyelesaikan seluruh soal di buku. Setelah itu ia membenamkan diri mengerjakan soal matematika sulit... Lambungan kegeniusan matematikanya begitu tinggi sehingga saya tidak bisa mengejar". \n',
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
                    '\n       Kecintaannya terhadap geometri dan aljabar membuat anak berusia dua belas tahun tersebut meyakini bahwa alam dapat dipahami melalui "struktur matematika." Einstein mulai mempelajari sendiri kalkulus pada usia 12 tahun, dan ketika berusia 14, ia mengungkapkan bahwa ia telah "menguasai kalkulus integral dan diferensial". \n',
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
                    '\n       Pada usia 13 tahun, Einstein membaca Kritik atas Nalar Murni karya Kant, dan Kant segera menjadi filsuf favoritnya. Menurut guru lesnya, "saat itu ia masih anak-anak, baru berusia tiga belas tahun, tetapi karya-karya Kant, yang tidak dipahami oleh orang biasa, telah dipahami jelas olehnya". \n',
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
                    '\n       Pada tahun 1895, berusia 16 tahun, Einstein mengikuti ujian masuk Politeknik Federal Swiss di Zürich (kelak menjadi Eidgenössische Technische Hochschule, ETH). Einstein gagal meraih nilai standar yang disyaratkan dalam ujian pengetahuan umum, tetapi meraih nilai luar biasa dalam ujian fisika dan matematika. \n',
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
                    '\n       Atas saran kepala Politeknik, Einstein mendaftar di sekolah kanton Argovian (Gimnasium) di Aarau, Swiss, pada tahun 1895 dan 1896 untuk menamatkan SMA dan mempersiapkan diri masuk perguruan tinggi. Ketika tinggal bersama keluarga profesor Jost Winteler, Einstein jatuh cinta pada putri Winteler bernama Marie. Adik perempuan Einstein, Maja, kelak menikah dengan putra Winteler, Paul. \n',
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
                    '\n       Pada Januari 1896, dengan persetujuan ayahnya, Einstein melepas kewarganegaraan Jermannya untuk menghindari wajib militer. Pada September 1896, ia lulus ujian Matura Swiss dengan nilai yang pada umumnya bagus, termasuk nilai tertinggi 6 dalam mata pelajaran fisika dan matematika, dengan skala nilai 1-6. \n',
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
                    '\n       Pada usia 17 tahun, ia diterima pada program diploma empat tahun pendidikan matematika dan fisika di Politeknik Zürich. Marie Winteler, yang setahun lebih tua darinya, pindah ke Olsberg, Swiss, untuk mengajar. Calon istri Einstein, seorang wanita Serbia berusia 20 tahun bernama Mileva Marić, juga diterima di Politeknik pada tahun tersebut. \n',
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
                text: '\nPernikahan dan Anak \n',
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
                    '\n       Korespondensi awal antara Einstein dan Marić mengungkapkan bahwa mereka memiliki seorang putri bernama "Lieserl", lahir pada awal 1902 di Novi Sad, Serbia. Marić kembali ke Swiss tanpa putrinya, yang nasibnya tidak diketahui. \n',
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
                    '\n       Einstein dan Marić menikah pada Januari 1903. Pasangan ini memiliki dua anak: Hans Albert Einstein lahir pada Mei 1904, dan Eduard lahir pada Juli 1910. Namun, Marić kembali ke Zürich bersama kedua putranya setelah mengetahui bahwa cinta sejati Einstein adalah Elsa, sepupunya sendiri. \n',
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
                    '\n       Setelah lima tahun pisah rumah, Einstein dan Marić bercerai pada 14 Februari 1919. Putra mereka, Eduard, mengalami gangguan mental dan didiagnosis menderita skizofrenia. Dalam surat-surat yang terungkap pada tahun 2015, Einstein menulis kepada cinta pertamanya Marie Winteler tentang pernikahannya dan perasaannya yang mendalam terhadap Marie. \n',
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
                    '\n       Einstein menikahi Elsa Löwenthal pada tahun 1919 setelah menjalin hubungan dengannya sejak 1912. Mereka beremigrasi ke Amerika Serikat pada tahun 1933, tetapi Elsa meninggal dunia pada tahun 1936 karena masalah kesehatan. \n',
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
                text: '\nKarier Akademis \n',
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
                    '\n       Pada tahun 1908, Einstein diakui sebagai ilmuwan terkemuka dan diangkat sebagai dosen di Universitas Bern. Setahun kemudian, ia menjadi guru besar fakultas fisika teoretis di Universitas Zürich atas rekomendasi Alfred Kleiner. \n',
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
                    '\n       Pada April 1911, Einstein menjadi profesor tetap di Universitas Charles-Ferdinand di Praha setelah memperoleh kewarganegaraan Austria. Selama di Praha, ia menulis banyak karya ilmiah tentang matematika radiasi dan teori kuantum padatan. \n',
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
                    '\n       Pada 1912, Einstein kembali mengajar di ETH Zurich di Zürich, tempat ia mempelajari mekanika analitik dan termodinamika. Ia juga meneliti masalah gravitasi bersama Marcel Grossmann. \n',
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
                    '\n       Pada tahun 1913, Einstein dipilih sebagai anggota Akademi Sains Prusia di Berlin, dan setahun kemudian bergabung dengan Universitas Berlin sebagai profesor tanpa tugas mengajar. Ia juga ditawari jabatan direktur di Institut Fisika Kaiser Wilhelm. \n',
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
                    '\n       Einstein terkenal setelah teori relativitas umumnya dikonfirmasi oleh Sir Arthur Eddington selama gerhana matahari 29 Mei 1919. Hasil pengamatan tersebut memperkenalkannya ke dunia internasional, membuatnya menjadi terkenal. \n',
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
                    '\n       Pada tahun 1922, Einstein dianugerahi Nobel Fisika 1921 untuk penemuannya tentang hukum efek fotolistrik. Ia juga terpilih sebagai Anggota Asing Royal Society dan dianugerahi Medali Copley oleh Royal Society pada tahun 1925. \n',
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
                text: '\nKehidupannya selanjutnya \n',
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
                    '\n       Einstein melakukan perjalanan ke luar negeri antara tahun 1921 dan 1922, dimulai dengan kunjungannya ke Amerika Serikat. Di sana, ia memberikan kuliah dan seminar, mengunjungi Gedung Putih di Washington, dan bertemu dengan tokoh terkenal. Selama kunjungannya, ia juga mengunjungi London, di mana ia memberi kuliah di King\'s College dan bertemu dengan berbagai ilmuwan dan intelektual terkemuka. \n ',
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
                    '\n       Selanjutnya, Einstein melakukan perjalanan ke Asia dan Palestina pada tahun 1922. Di Asia, ia memberikan serangkaian pidato di Singapura, Ceylon, dan Jepang, yang disambut dengan antusiasme oleh ribuan pendengar. Di Palestina, ia disambut dengan penuh hormat dan menyatakan kebahagiannya melihat orang Yahudi diakui sebagai kekuatan dunia. \n ',
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
                    '\n       Pada tahun 1930 hingga 1931, Einstein melakukan kunjungan kedua ke Amerika Serikat. Ia mengajar di California dan disambut dengan antusiasme di New York, bertemu dengan tokoh terkenal seperti Charlie Chaplin. Selama kunjungannya, ia menolak tawaran penghargaan dan berbicara di depan umum. \n ',
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
                    '\n       Dengan bangkitnya Nazi di Jerman pada tahun 1933, Einstein menyadari bahwa ia tidak bisa kembali ke negaranya dan menjadi pengungsi. Setelah beberapa bulan tinggal di Eropa, ia akhirnya menetap di AS, menerima tawaran mengajar di Institute for Advanced Study di Princeton. \n ',
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
                    '\n       Selama menjadi dosen di Institute for Advanced Study, Einstein tetap aktif dalam memperjuangkan hak asasi manusia dan menentang rasisme di Amerika. Ia bergabung dengan NAACP dan memberikan dukungan finansial kepada mahasiswa kulit hitam. Pada tahun 1940, ia menjadi warga negara AS, menghargai meritokrasi dalam budaya Amerika dan terus memperjuangkan prinsip-prinsip sosialnya. \n ',
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
                text: '\nKehidupan Peribadi \n ',
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
                    '\n       Einstein adalah salah seorang pendukung utama pendirian Universitas Ibrani Yerusalem pada tahun 1925. Ia memberikan saran-saran penting terkait program awal universitas, termasuk pendirian Fakultas Pertanian dan Fakultas Kimia dan Mikrobiologi. \n ',
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
                    '\n       Meskipun ditawari jabatan Presiden Israel setelah kematian Chaim Weizmann pada 1952, Einstein menolaknya dengan terharu dan menyatakan bahwa ia tidak bisa menerimanya. Kecintaannya terhadap musik menjadi bagian integral dalam kehidupannya, dimulai sejak usia dini saat ia mulai memainkan biola. Musik kamar menjadi rutinitas sosialnya, dan ia sering bermain bersama pemusik profesional. \n ',
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
                    '\n       Pandangan politik Einstein cenderung mendukung sosialisme dan pembentukan pemerintahan global demokratis. Ia juga sangat terinspirasi oleh Mahatma Gandhi. Pandangan agamanya lebih condong ke arah panteisme, dan ia menyebut dirinya sebagai seorang agnostik yang sangat religius. Meskipun begitu, ia aktif berhubungan dengan kelompok humanis nonreligius dan Budaya Etis di Britania Raya dan AS. \n ',
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
                text: '\nKematian \n ',
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
                    '\n       Pada 17 April 1955, Einstein mengalami pendarahan akibat pecahnya aneurisma aorta perut, yang telah dikencangkan melalui pembedahan sebelumnya pada tahun 1948. \n ',
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
                    '\n       Meskipun telah membuat konsep pidato untuk ulang tahun Negara Israel, Einstein tidak sempat menyelesaikannya karena sakit. Ia menolak operasi dan menyatakan keinginannya untuk pergi dengan elegan. \n ',
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
                    '\n       Einstein meninggal di Rumah Sakit Princeton keesokan paginya pada usia 76 tahun, setelah terus bekerja hingga akhir hayatnya. Setelah kematiannya, otak Einstein diambil tanpa seizin keluarganya oleh patolog Rumah Sakit Princeton dengan harapan ilmu saraf masa depan bisa memahami kecerdasan luar biasanya. \n ',
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
                    '\n       Jenazah Einstein dikremasi dan abunya disebar di lokasi yang dirahasiakan, sesuai keinginan keluarganya. Dalam pidato mengenang Einstein, fisikawan nuklir J. Robert Oppenheimer mengungkapkan kesannya terhadap Einstein, memuji sifatnya yang sederhana namun luar biasa. \n ',
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
