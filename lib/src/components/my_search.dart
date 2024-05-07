// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:ilmuan/pustaka.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

final TextEditingController searchController = TextEditingController();
final List<Category> _originalData = dataList;

// untuk meng clear text di text input
void clearSearchText() {
  searchController.clear();
}

// untuk agar ketika data yang di cari di klik datanya kembali original
void originalData(Function setState) {
  setState(() {
    dataList = _originalData;
  });
}

// class untuk apppbar
class MyAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppbar({Key? key}) : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 7),
          child: Builder(
              builder: (context) => IconButton(
                  onPressed: () async {
                    Scaffold.of(context).openDrawer();
                    originalData(setState);
                  },
                  icon: const Icon(Icons.menu))),
        ));
  }
}

// klas untuk pencarian dan menampilkan data list
class MySearch extends StatefulWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  MySearchState createState() => MySearchState();
}

class MySearchState extends State<MySearch> {
  // instance database
  DatabaseHelper dbHelper = DatabaseHelper();
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    dbHelper.database();
  }

  //fungsi dari pencarian
  void searchData(value) {
    List<Category> filteredData = _originalData
        .where((item) => item.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
    setState(() {
      dataList = filteredData.isEmpty ? _originalData : filteredData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(children: [
      Container(
        height: 43,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 235, 236, 235),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: TextField(
            controller: searchController,
            onChanged: searchData,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              decoration: TextDecoration.none,
            ),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: (() async {
                    clearSearchText();
                    originalData(setState);
                  })),
              border: InputBorder.none,
              hintText: 'Temukan Ilmuan...',
            )),
      ),
      const SizedBox(
        height: 15,
      ),

      // untuk menampilkan data dari list
      Expanded(
          child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        itemCount: dataList.length,
        itemBuilder: (context, index) {
          Category item = dataList[index];
          return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => (item.route))));
                // agar setelah 2 dtik baru di eksekusi
                Future.delayed(const Duration(seconds: 2), () {
                  clearSearchText();
                  originalData(setState);
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: item.height,
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage(item.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            //untuk icon Favorite
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    await dbHelper.insert({
                                      'name': item.name,
                                      'text': item.text,
                                      'image': item.image,
                                      'route': item.route.toString(),
                                    });

                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: const Color.fromARGB(
                                            255, 223, 247, 202),
                                        builder: (context) => Container(
                                            height: 60,
                                            width: double.infinity,
                                            padding: const EdgeInsets.all(10),
                                            child: const Center(
                                              child: Text(
                                                'Berhasil di simpan ke favorite',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )));
                                    setState(() {
                                      isFavorite = true;
                                    });
                                  },
                                  icon: FutureBuilder<List<Category>>(
                                      future: dbHelper.all(),
                                      builder: (context, snapshot) {
                                        // jika data di database dengan nama tertentu sama dengan nama yang di klik
                                        if (snapshot.hasData &&
                                            snapshot.data!.any((category) =>
                                                category.name == item.name)) {
                                          return Icon(
                                            Icons.favorite,
                                            color: isFavorite
                                                ? Colors.red
                                                : Colors.red,
                                          );
                                        } else {
                                          return Icon(
                                            Icons.favorite_border,
                                            color: isFavorite
                                                ? Colors.white
                                                : Colors.white,
                                          );
                                        }
                                      }))
                            ],
                          ),
                          Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(247, 244, 244, 1.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Wrap(
                                children: [
                                  Text(
                                    item.text!,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lora',
                                        fontSize: 15),
                                  ),
                                ],
                              ))
                        ],
                      )),
                  const SizedBox(height: 5),
                  Text(
                    item.name!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lora'),
                  ),
                ],
              ));
        },
      ))
    ]));
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
