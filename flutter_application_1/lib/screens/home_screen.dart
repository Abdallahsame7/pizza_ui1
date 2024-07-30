import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/appbar.dart';
import 'package:flutter_application_1/custom/bannners.dart';
import 'package:flutter_application_1/custom/eating_way.dart';
import 'package:flutter_application_1/custom/first_menus.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          appBar(),
          SizedBox(height: 12,),
          Way(),
          SizedBox(height: 12,),
          banners(),
          SizedBox(height: 12,),
          menu()
        ],
      ) ,
    );
  }
}