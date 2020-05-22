import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget {
  final Color color;
  final String label;
  final String value;

  CardProfile({this.color, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 50),
            height: 150,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6)
              ],
            ),
            child: Text(
              this.value,
              maxLines: 1,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
          Positioned(
            bottom: 20,
            child: Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: this.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Center(
                child: Text(
                  this.label,
                  maxLines: 2,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
