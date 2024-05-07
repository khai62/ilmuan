import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilmuan/pustaka.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyHome()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color.fromARGB(200, 0, 2, 0),
              Color.fromARGB(180, 0, 5, 0),
              Color.fromARGB(150, 0, 30, 0),
              Color.fromARGB(130, 2, 50, 0),
              Color.fromARGB(100, 5, 80, 5),
              Color.fromARGB(150, 0, 30, 0),
              Color.fromARGB(180, 0, 5, 0),
              Color.fromARGB(200, 0, 2, 0),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 260,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/ilmuanremovebg.png'),
                  fit: BoxFit.cover,
                )),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ilmuan',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lora',
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      )
                    ]),
              ),
              const SizedBox(height: 30),
              LoadingAnimationWidget.fourRotatingDots(
                color: Colors.white,
                size: 40,
              )
            ],
          )),
    );
  }
}
