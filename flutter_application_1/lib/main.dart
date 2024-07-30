import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/nav.dart';
import 'package:flutter_application_1/custom/pizza.dart';
import 'package:flutter_application_1/screens/cart.dart';
import 'package:flutter_application_1/screens/details.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    initialRoute: "navigation",
    routes: {
      "navigation" :(context) => navigation(),
      "home" :(context) => home(),
      "menuscreen" :(context) => menuscreen(selectedIndex: 0),
      "Cart" : (context) => Cart(),
      "PizzaDetailPage" : (context) => PizzaDetailPage(pizza: Pizza(name: '', description: '', imageUrl: '', price: 0.0, icon: Icon(Icons.favorite)) ),
    },
    );
  }
}
