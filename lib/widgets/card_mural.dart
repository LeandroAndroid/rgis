import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';

class CardMural extends StatelessWidget {

  final String urlImage;
  final String title;
  final String subtitle;


  CardMural({@required this.urlImage,@required this.title,@required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final double _widthCarrosel = returnWidth(small: 10, medium: 4, large: 4,width: MediaQuery.of(context).size.width);

    return Container(
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
                child: Image.network(this.urlImage, fit: BoxFit.cover),
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
                        this.title,
                        style: kTitleWhite,
                      ),
                      Text(
                        this.subtitle,
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
        ));
  }
}
