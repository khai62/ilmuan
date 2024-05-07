import 'package:flutter/material.dart';
import 'package:ilmuan/pustaka.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void _launchUrl() async {
    final Uri uri = Uri.parse(
        'https://play.google.com/store/apps/details?id=com.dunia.ilmuan');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Tidak dapat meluncurkan $uri';
      }
    } catch (e) {
      throw 'Tidak dapat meluncurkan $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  image: const DecorationImage(
                      image: AssetImage('assets/images/ilmuan.png'),
                      fit: BoxFit.cover)),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: const Text(
                  '∞',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              )),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Ilmuan Favorit'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyFavorite()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Bagikan Apliksi ini'),
            onTap: () async {
              await Share.share(
                  'https://play.google.com/store/apps/details?id=com.example.ilmuan');
            },
          ),
          ListTile(
            leading: const Icon(Icons.star),
            title: const Text('Beri Penilaian'),
            onTap: () {
              _launchUrl();
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('Info Aplikasi'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      backgroundColor: Colors.white,
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Tutup'))
                      ],
                      contentPadding: const EdgeInsets.all(20.0),
                      content: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(children: [
                            TextSpan(
                                text: 'Versi \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: '1.0.0 \n',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text: '\n Pengembang \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'Khairuddin \n',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text: '\n Sumber \n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                            TextSpan(
                                text: 'www.wikipedia.org',
                                style: TextStyle(
                                  color: Colors.black,
                                )),
                          ]))));
            },
          ),
        ],
      ),
    );
  }
}
