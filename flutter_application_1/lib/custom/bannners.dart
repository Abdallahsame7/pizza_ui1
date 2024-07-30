import 'package:flutter/material.dart';

class banners extends StatefulWidget {
  const banners({super.key});

  @override
  State<banners> createState() => _bannersState();
}

class _bannersState extends State<banners> {
  List<String> banners = [
    "https://www.dominos.co.in/blog/wp-content/uploads/2022/12/Blog-Banner-2-980x442.jpg",
    "https://img.freepik.com/free-psd/food-menu-delicious-pizza-web-banner-template_106176-419.jpg",
    "https://image.freepik.com/free-psd/pizza-sale-modern-web-banner-template-design_131196-137.jpg",
    "https://static.vecteezy.com/system/resources/previews/023/961/870/original/pizza-banner-or-background-pizza-on-the-board-illustration-vector.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
         itemCount: banners.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left:12.0 , right: 12 ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                    BoxShadow(
                      blurRadius: 12,
                      color: const Color.fromARGB(255, 192, 192, 192),
                      offset: Offset(1, 1)
                    ),
                  ],
                
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(banners[index] , width: 300, height: 300, fit: BoxFit.cover,)),
            ),
          );
        },
       
      ),
    );
  }
}