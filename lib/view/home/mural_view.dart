import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/models/mural.dart';

class MuralView extends StatelessWidget {

  String text =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";


  final Mural mural;
  MuralView(this.mural);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(this.mural.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.black45
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(mural.title, style: kTitleWhite.copyWith(fontSize: 25),),
                    margin: EdgeInsets.only(top: 240, left: 40),
                  ),
                  Container(
                    child: Text(mural.dataPublish, style: kTitleWhite.copyWith(fontSize: 12),),
                    margin: EdgeInsets.only(left: 40),
                  )
                ],
              ),
            ),
            Positioned(
              top: 20,
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 320),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Text(text, style: TextStyle(
                  fontSize: 18,
                ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),


          ],


        ),
      ),
    );
  }
}
