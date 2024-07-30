import 'package:flutter/material.dart';

class Way extends StatefulWidget {
  const Way({super.key});

  @override
  State<Way> createState() => _WayState();
}

class _WayState extends State<Way> {
  int ontap  = 0;

  List<Widget> icons = [
    Icon(Icons.delivery_dining, size: 15), 
    Icon(Icons.motorcycle, size: 15),
    Icon(Icons.car_rental, size: 15),
    Icon(Icons.chair_outlined, size: 15),
  ];

  List<String> title = [
    "Delivery", "Curbside", "Self-Pickup", "Dine-in"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 28),
            child: InkWell(
              onTap: () {
                setState(() {
                  ontap = index; 
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: ontap == index ? Colors.red : Colors.transparent),
                      borderRadius: BorderRadius.circular(30),
                       boxShadow: [
                BoxShadow(
                  blurRadius: 25,
                  color: Colors.grey,
                  offset: Offset(1, 1)
                )
              ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30, 
                      child: icons[index],

                    ),
                  ),
                  SizedBox(height: 5), 
                  Text(title[index]),
                  if (ontap == index)
                  Container(
                    height: 2, 
                    width: 40, 
                    color: Colors.red, 
                  ), 
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
