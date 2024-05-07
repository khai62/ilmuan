import 'package:flutter/material.dart';
//klas text ilmuan

class MyText extends StatelessWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Revolusi Pengatahuan',
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ), 
      ],
    );
  }
}

// class teks Quots

class MyQuots extends StatelessWidget {
  const MyQuots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: <Widget>[
        Text(
          'Kisah-Kisah Ilmuan yang Menciptakan Perubahan',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Lora',
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
