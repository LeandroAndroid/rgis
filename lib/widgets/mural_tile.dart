import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';
import 'package:rgis/models/mural.dart';
import 'package:rgis/view/home/mural_view.dart';

class MuralTile extends StatelessWidget {
  final Mural mural;

  MuralTile({@required this.mural});

  @override
  Widget build(BuildContext context) {
    final double _widthTile = returnWidth(
        small: 11,
        medium: 6,
        large: 6,
        width: MediaQuery.of(context).size.width);

    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context)=> MuralView(this.mural))
          );
        },
        child: Stack(
          children: <Widget>[
            Container(
              width: _widthTile,
              padding: EdgeInsets.only(left: 115),
              height: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    mural.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: kColorGrey,
                    ),
                  ),
                  Text(
                    mural.datePublish,
                    style: TextStyle(color: kColorGrey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    mural.content[0],
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: kColorGrey, fontSize: 12),
                  ),
                ],
              ),
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
                  image: NetworkImage(this.mural.image),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
