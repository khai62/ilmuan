import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ilmuan/pustaka.dart';

class DatabaseHelper {
  final String databaseName = 'favorite_database';
  final int _databaseVersion = 1;

  final String table = 'favorite';
  final String id = 'id';
  final String name = 'name';
  final String text = 'text';
  final String image = 'image';
  final String route = 'route';

  Database? _database;

  // cek database udah ad atau blm
  Future<Database> database() async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // fungsi untuk membuat database
  Future _initDatabase() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, databaseName);
    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

// fungsi ketika database di buat
  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
          $id INTEGER PRIMARY KEY,
          $name TEXT NULL,
          $text TEXT NULL,
          $image TEXT NULL,
          $route TEXT NULL
        )
      ''');
  }

  // untuk mendapatkan semua data dari class Category
  Future<List<Category>> all() async {
    final data = await _database!.query(table);
    List<Category> result = data.map((e) => Category.fromJson(e)).toList();
    return result;
  }

  // fungsi untuk menambahkan data ke dalam database
  Future<int> insert(Map<String, dynamic> row) async {
    final existingRows = await _database!
        .query(table, where: '$name = ?', whereArgs: [row[name]]);

    if (existingRows.isEmpty) {
      final query = await _database!.insert(table, row);
      return query;
    } else {
      return -1;
    }
  }

  //fungsi delete
  Future delete(int idParam) async {
    await _database!.delete(table, where: '$id = ? ', whereArgs: [idParam]);
  }

  Future ruoter(String isroute) async {
    await _database!.query(table, where: '$route = ? ', whereArgs: [isroute]);

    switch (isroute) {
      case 'AlbertEinstein':
        return const AlbertEinstein();
      case 'AlKhawarizmi':
        return const AlKhawarizmi();
      default:
        return Scaffold(
          appBar: AppBar(),
          body: const CircularProgressIndicator(),
        );
    }
  }
}
