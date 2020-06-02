import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/models/navigation_item.dart';

class BottomNavyBar extends StatefulWidget {

  final List<NavigationItem> items;

  BottomNavyBar({this.items});

  @override
  _BottomNavyBarState createState() => _BottomNavyBarState();
}

class _BottomNavyBarState extends State<BottomNavyBar> {

  int selectedIndex = 0;
  Color backgroundColor = Colors.white;

  Widget _widgetBuildItem(NavigationItem item, bool isSelected) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 270),
      width: isSelected ? 120 : 40,
      height: 40,
      padding: isSelected ? EdgeInsets.only(left: 16, right: 16) : null,
      decoration: isSelected
          ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: item.color.withAlpha(70),
            )
          : null,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconTheme(
                data: IconThemeData(
                    size: 24,
                    color: isSelected ? item.color : Colors.black87),
                child: item.icon,
              ),
              isSelected
                  ? Container(
                      child: DefaultTextStyle(
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: item.color,
                        ),
                        child: item.title,
                      ),
                      padding: EdgeInsets.only(left: 8),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.items.map((item) {
          var itemIndex = widget.items.indexOf(item);
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = itemIndex;
              });
              item.onTap();
            },
            child: _widgetBuildItem(item, selectedIndex == itemIndex),
          );
        }).toList(),
      ),
    );
  }
}
