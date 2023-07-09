// ignore_for_file: camel_case_types, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/mywiddget.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Karshan Kaka Store",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        bottomOpacity: 20,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            myProduct(category: 'Fruit', d_name: 'Fruit'),
            myProduct(category: 'Grocery', d_name: 'Grocery'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('cart');
        },
        child: const Icon(
          CupertinoIcons.printer_fill,
        ),
      ),
    );
  }
}
