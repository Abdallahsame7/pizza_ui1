import 'package:flutter/material.dart';

class MenuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MenuAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 223, 223, 223),
      title: Text("Explore Menu"),
      leading: Padding(
        padding: const EdgeInsets.only(left: 12, top: 4, bottom: 4),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1,
                  spreadRadius: 1,
                  color: Color.fromARGB(255, 192, 192, 192),
                  blurStyle: BlurStyle.outer,
                ),
              ],
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.search),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
