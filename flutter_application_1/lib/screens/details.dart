import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/pizza.dart';

class PizzaDetailPage extends StatelessWidget {
  final Pizza pizza;

  const PizzaDetailPage({Key? key, required this.pizza}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pizza.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(pizza.imageUrl),
            SizedBox(height: 16),
            Text(pizza.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(pizza.description),
            SizedBox(height: 16),
            Text('${pizza.price} EGP', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}