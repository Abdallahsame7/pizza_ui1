import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/appbar_menu.dart';
import 'package:flutter_application_1/custom/pizza.dart';
import 'package:flutter_application_1/screens/details.dart';

class menuscreen extends StatefulWidget {
    final int selectedIndex;

  const menuscreen({super.key , required this.selectedIndex});

  @override
  State<menuscreen> createState() => _menuscreenState();
}

class _menuscreenState extends State<menuscreen> {

  int isclicked = 0;

    @override
  void initState() {
    super.initState();
    isclicked = widget.selectedIndex;  // Initialize with the passed selectedIndex
  }


   List<String> title = [
    "Deals" , "New" , "For me" , "Pizza", "Starters" , "Pasta"
  ];
  List<String> circle = [
    "https://www.thechunkychef.com/wp-content/uploads/2017/10/Deluxe-Pizza-Pasta-dish.jpg",
    "http://www.thecomfortofcooking.com/wp-content/uploads/2014/08/13.jpg",
    "https://blog.caterspot.sg/wp-content/uploads/2017/07/6Party-Packs-for-Birthday-Parties-Office-Lunch-and-Casual-Gatherings-1.jpg",
    "http://4.bp.blogspot.com/-mH0NB4l3tx0/TxfrIe_sLQI/AAAAAAAAAZ0/87M1g18q4jc/s1600/DSCN1581.JPG",
    "https://i.ytimg.com/vi/r7AqckDY07g/maxresdefault.jpg",
    "https://therecipelife.com/wp-content/uploads/2021/07/Pizza_Spaghetti_Bake08-768x1024.jpg",
  ]; 
  List <Widget> icons = [
    Icon(Icons.abc),
    Icon(Icons.e_mobiledata),
    Icon(Icons.access_alarm_rounded),
    Icon(Icons.zoom_out_map)
  ];

  List <String> name = [
    "spicy",
    "popular",
    "new",
    "chessy",
 ];

  final List<Pizza> pizzas = [
    Pizza(name: 'Margherita', imageUrl: 'https://www.godubrovnik.com/wp-content/uploads/pizza.jpg', price: 9.99 ,description: "this is the first pizza made by bedo and it is very diffrent you have to choose it" , icon: Icon(Icons.favorite)),
    Pizza(name: 'Pepperoni', imageUrl: 'https://hdwallpaperim.com/wp-content/uploads/2017/09/17/60012-food-pizza-cheese.jpg', price: 16.99 , description: "this is the first pizza made by bedo and it is very diffrent you have to choose it" , icon: Icon(Icons.favorite)),
  ];


   final List<Pizza> pasta = [
    Pizza(name: 'bedopasta', imageUrl: 'https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto:eco/https://storage.googleapis.com/gen-atmedia/3/2018/12/e77cb676a9408994b6b07b673d46d17bdbf8814c.jpeg', price: 5.99 ,description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad" , icon: Icon(Icons.favorite)),
    Pizza(name: 'mococpd', imageUrl: 'https://www.momontimeout.com/wp-content/uploads/2022/08/one-pot-pasta-chorizo-pasta-square.jpeg', price: 12.99 , description: "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor " , icon: Icon(Icons.favorite)),
  ];
   final List<Pizza> newitems = [
    Pizza(name: 'pastapizza', imageUrl: 'http://4.bp.blogspot.com/-mH0NB4l3tx0/TxfrIe_sLQI/AAAAAAAAAZ0/87M1g18q4jc/s1600/DSCN1581.JPG', price: 7.99 ,description: "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia" , icon: Icon(Icons.favorite)),
    Pizza(name: 'nodelsbedo', imageUrl: 'https://kirbiecravings.com/wp-content/uploads/2014/08/pizza-pasta-31a.jpg', price: 18.99 , description: "molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur" , icon: Icon(Icons.favorite)),
  ];
  
  @override
  Widget build(BuildContext context) {
    List<Pizza> currentPizzas;

    if (isclicked == 0) { 
      currentPizzas = pizzas;
    } else if (isclicked == 3 ) { 
      currentPizzas = pasta;
    } else if (isclicked == 2){
      currentPizzas = newitems;
    } 
    else {
      currentPizzas = [];
    }
    return Scaffold(
      appBar:   MenuAppBar(),
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
        height: 1000,
        child: ListView(
                  children: [
                    SizedBox(height: 19,),
          
                   Container(
                    height: 100,
                     child: ListView.builder(
                      itemCount: circle.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){
                            setState(() {
                            isclicked = index;  
                            });
                            
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                   Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                     boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 220, 220, 220),
                                        blurRadius: 16
                                      )
                                     ]
                            
                                    ),
                                     child: CircleAvatar(
                                      radius: 25,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(54),
                                        child: Image.network(circle[index] , 
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
                              if(isclicked == index)        
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
                   
              
                    SizedBox(height: 12,),
                     
                    Container(
                      height: 40,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: name.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 12, right: 12),
                            child: Container(
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 212, 212, 212),
                                    blurRadius: 2,
                                    spreadRadius: 1
                                  )
                                ]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  icons[index],
                                  Text(name[index])
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),  
                    SizedBox(height: 16,),
          
                    Container(
                  height: 500,
                  child: ListView.builder(
                    itemCount: currentPizzas.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return InkWell(
                     onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PizzaDetailPage(pizza: currentPizzas[index]),
              ),
            );
          },
        
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(currentPizzas[index].name , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                                  Text(currentPizzas[index].description , style: TextStyle(color: Colors.grey),),
                                                
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        currentPizzas[index].icon
                                      ],
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                       Image.network(currentPizzas[index].imageUrl),
                                       Positioned(
                                        bottom: 10,
                                        right: 10,
                                        child:Container(
                                          decoration: BoxDecoration(
                                            color: Colors.amber
                                          ),
                                          child: Text( "${currentPizzas[index].price.toString()} EGP" , style: TextStyle(fontSize: 25 , color: Colors.black , fontWeight: FontWeight.bold),)),
                                       )
                                       ]
                                       ),
        
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: MaterialButton(
                                                elevation: 3,
                                                shape: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(12)
                                                ),
                                                color: Colors.red,
                                                onPressed: (){
                                              
                                                },
                                                child: Text("ADD" , style: TextStyle(color: Colors.white),) ,
                                                ),
                                            ),
                                          ],
                                        )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    ),
               ),
                  ]
        ),
        ),
      )
    );
  }
}
