import 'package:flutter/material.dart';
import 'package:rgis/constants/functions.dart';
import 'package:rgis/models/mural.dart';

class MuralTile extends StatelessWidget {

  final Mural mural;

  MuralTile({@required this.mural});

  @override
  Widget build(BuildContext context) {

    final double _widthTile = returnWidth(small: 11, medium: 6, large: 6,width: MediaQuery.of(context).size.width);

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Stack(
        children: <Widget>[
          Container(
            width: _widthTile,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              color: const Color(0xfff8f4f4),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ],
            ),
          ),
          Container(
            width: 107.0,
            height: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              image: DecorationImage(
                image:  NetworkImage(this.mural.image),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
