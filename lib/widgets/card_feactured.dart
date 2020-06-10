import 'package:flutter/material.dart';
import 'package:rgis/models/mural.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rgis/view/home/mural_view.dart';

class CardFeactured extends StatelessWidget {
  final Mural mural;

  CardFeactured({@required this.mural});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context)=> MuralView(this.mural))
        );
      },
      child: Stack(alignment: Alignment.bottomCenter, children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: NetworkImage(this.mural.image), fit: BoxFit.cover)),
        ),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              )),
          height: 80,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this.mural.title,
                maxLines: 1,
                style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                this.mural.datePublish,
                style: GoogleFonts.quicksand(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
