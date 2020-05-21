import 'package:flutter/material.dart';

class ListTileDrawer extends StatelessWidget {

  final String label;
  final IconData icon;
  final bool selection;
  final VoidCallback onTap;

  ListTileDrawer({this.label, this.icon, this.selection = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: this.selection ? Colors.grey[300] : Colors.transparent,
          borderRadius: BorderRadius.circular(32)),
      child: InkWell(
        onTap: this.onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Row(
            children: <Widget>[
              Icon(this.icon, color: this.selection ? Colors.blue[800] : Colors.grey,),
              SizedBox(width: 16,),
              Text(this.label,style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: this.selection ? Colors.blue[800] : Colors.black
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
