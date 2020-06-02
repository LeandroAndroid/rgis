import 'package:flutter/cupertino.dart';

class NavigationItem{

  final Widget title;
  final Widget icon;
  final Color color;
  final VoidCallback onTap;

  NavigationItem({this.icon,this.title, this.color, this.onTap});

}