import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/menu.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {

  List<String> title = [
    "Deals" , "New" , "For me" , "Pizza", "Starters" , "Pasta"
  ];
  List<String> images = [
    "https://www.thechunkychef.com/wp-content/uploads/2017/10/Deluxe-Pizza-Pasta-dish.jpg",
    "http://www.thecomfortofcooking.com/wp-content/uploads/2014/08/13.jpg",
    "https://blog.caterspot.sg/wp-content/uploads/2017/07/6Party-Packs-for-Birthday-Parties-Office-Lunch-and-Casual-Gatherings-1.jpg",
    "http://4.bp.blogspot.com/-mH0NB4l3tx0/TxfrIe_sLQI/AAAAAAAAAZ0/87M1g18q4jc/s1600/DSCN1581.JPG",
    "https://i.ytimg.com/vi/r7AqckDY07g/maxresdefault.jpg",
    "https://therecipelife.com/wp-content/uploads/2021/07/Pizza_Spaghetti_Bake08-768x1024.jpg",
  ]; 
  
  @override
  Widget build(BuildContext context) {
      return Column (
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Explore Menu" ,  style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ),),
              Row(
                children: [
                  Text("View All"),
                  IconButton(
                    onPressed: (){
                      Navigator.pushNamed(context, "menuscreen");
                    },
                   icon: Icon( Icons.arrow_forward),
                    ),
                ],
              )
            ],
          ),
        ),
        

        Container(
          height: 320,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 150,
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10
            ),
            itemCount: images.length,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => menuscreen(selectedIndex: index),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                         Container(
                          decoration: BoxDecoration(
                             boxShadow: [
                  BoxShadow(
                    blurRadius: 30,
                    color: Colors.grey,
                    offset: Offset(1, 1)
                  )
                                ],
                          ),
                           child: CircleAvatar(
                            radius: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(54),
                              child: Image.network(images[index] , 
                              width: 100,
                              height: 100,
                              fit: BoxFit.fill,
                              ),
                            ),
                                                 ),
                         ),
                        
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 9),
                        child: Text(title[index]),
                      ),
                  
                      Container(
                      height: 2, 
                      width: 55, 
                      color: Colors.red, 
                    ), 
                    ],
                  ),
                ),
              );
            },
            ),
        ),


      ],
    );
  }
}
