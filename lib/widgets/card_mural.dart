import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';
import 'package:rgis/models/mural.dart';

class CardMural extends StatelessWidget {

  final Mural mural;


  CardMural({@required this.mural});

  @override
  Widget build(BuildContext context) {
    final double _widthCarrosel = returnWidth(small: 10, medium: 10, large: 10,width: MediaQuery.of(context).size.width);

    return InkWell(
      onTap: (){},
      child: Container(
          width: _widthCarrosel,
          margin: EdgeInsets.only(top: 4, bottom: 16),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x59000000),
                  offset: Offset(0, 4),
                  blurRadius: 6)
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: <Widget>[
                Container(
                  child: Image.network(this.mural.image, fit: BoxFit.cover),
                  width: _widthCarrosel,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    width: _widthCarrosel,
                    color: Colors.black45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.mural.title,
                          style: kTitleWhite,
                        ),
                        Text(
                          this.mural.subtitle,
                          style: TextStyle(color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
