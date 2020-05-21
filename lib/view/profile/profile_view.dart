import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/widgets/list_tile_drawer.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              color: kColorGrey,
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                  )),
            ),
            Center(
              child: Container(
                height: 130,
                width: 120,
                margin: EdgeInsets.only(top: 80),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x3d000000),
                          offset: Offset(0, 3),
                          blurRadius: 6)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32)),
              ),
            ),
            Center(
              child: Container(
                height: 125,
                width: 115,
                margin: EdgeInsets.only(top: 82),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32)),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Icon(Icons.arrow_back_ios, color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color(0x3bf8fbff),
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Container(
                width: 50.0,
                height: 50.0,
                child: Icon(Icons.edit, color: Colors.white,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color(0x3bf8fbff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
