import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class appBar extends StatelessWidget {
  const appBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              width: 150,
              height: 70,
              margin: EdgeInsets.only(right: 9),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                  BoxShadow(
                    blurRadius: 12,
                    color: Colors.grey,
                    offset: Offset(2, 2)
                  ),
                ],
                ),
                child: ListTile(
                  title: Text("Select Location"),
                  subtitle: Text("Nasr city"),
                  leading: Icon(Icons.menu),
                  trailing: Icon(Icons.arrow_drop_down)
                ),
            ),
          ),
          Container(
            width: 50,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  color: Colors.grey,
                  offset: Offset(2, 2)
                )
              ],
            ),
            child: Center(child: Icon(Icons.notification_add_outlined)),
          )
          
        ],
      ),
    );
  }
}