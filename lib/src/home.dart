import 'package:flutter/material.dart';
import 'package:ilmuan/pustaka.dart';

// kelas utama home
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppbar(),
      drawer: MyDrawer(),
      body: Column(
        children: <Widget>[MyContainer()],
      ),
    );
  }
}

// klas container
class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        color: const Color.fromARGB(255, 253, 253, 251),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyText(),
            MyQuots(),
            SizedBox(height: 25),
            MySearch(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
