import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/pizza.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final List<Pizza> pizzas = [
    Pizza(
      name: 'Margherita',
      imageUrl: 'https://www.godubrovnik.com/wp-content/uploads/pizza.jpg',
      price: 9.99,
      description: "This is the first pizza made by Bedo and it is very different. You have to choose it.",
      icon: Icon(Icons.favorite),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              itemCount: pizzas.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Stack(
                      children: [
                        Image.network(pizzas[index].imageUrl),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.white,
                                ),
                                child: IconButton(
                                  onPressed: () {
                                 //   Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 70),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black,
                                  width: 150,
                                  child: Text(
                                    pizzas[index].name,
                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  constraints: BoxConstraints(maxWidth: 350),
                                  color: Colors.black,
                                  child: Text(
                                    pizzas[index].description,
                                    style: TextStyle(fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black,
                                  width: 150,
                                  child: Text(
                                    pizzas[index].price.toString(),
                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Spacer(),
          
          Container(
            height: 160,
            child: ListView.builder(
              itemCount: pizzas.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 6,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.red,
                      ),
                      child: ListTile(
                        leading:  Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: Image.network(pizzas[index].imageUrl , width: 50,height: 50, fit: BoxFit.cover,)),
                        title: Text(pizzas[index].name),
                        subtitle: Text(pizzas[index].description, maxLines: 2,),
                        trailing: 
                           Container(

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                            ),
                           height: 50,
                           width: 140,
                             child: Center(
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.shopping_bag_sharp),
                                  Text("Add to cart")
                                ],
                                                         ),
                             ),
                           )
                        ),
                        )
                        
                        
                  ),
                );
              },
              
              ),
          )

          
          ],
      ),
    );
  }
}
