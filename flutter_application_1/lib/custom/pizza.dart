import 'package:flutter/material.dart';

class Pizza {
  final String name;
  final String description;
  final String imageUrl;
  final double price;
  final Widget icon;

  Pizza({required this.icon , required this.description, required this.name, required this.imageUrl, required this.price});
}
