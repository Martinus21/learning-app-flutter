import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItem = [
  NavigationModel(title: "Profile", icon: Icons.account_circle),
  NavigationModel(title: "Dashboard", icon: Icons.dashboard),
  NavigationModel(title: "Setting", icon: Icons.settings)
];