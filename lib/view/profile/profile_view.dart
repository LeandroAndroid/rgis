import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/view/profile/card_profile.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              color: kColorGrey,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 150),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(32),
                  topLeft: Radius.circular(32),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 70),
                //padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Leandro Ferreira',
                      style: TextStyle(
                          color: kColorGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text(
                      'leandro@rgis.com',
                      style: TextStyle(
                          color: kColorGrey,
                          fontWeight: FontWeight.w300,
                          fontSize: 15),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          CardProfile(color: kColorWine,label: 'Total Auditado',value: '38.8K',),
                          CardProfile(color: kColorBlue,label: 'Eventos Realizados',value: '152',),
                          CardProfile(color: kColorWine2,label: 'Efetivado',value: '16 Meses',),
                          CardProfile(color: kColorGreen,label: 'APH',value: '152.8',),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: ListTile(
                        title: Text('Notificações'),
                        leading: Icon(Icons.notifications),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),

                    Stack(
                      children: <Widget>[
                        Container(
                          width: 320,
                          height: 190,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: const Color(0x29000000),
                                    offset: Offset(0, 6),
                                    blurRadius: 6)
                              ],
                              borderRadius: BorderRadius.circular(32.0),
                              color: const Color(0xfff3eeee),
                            )
                        ),
                        Transform.translate(
                          offset: Offset(10.0, 10.0),
                          child: Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://i0.wp.com/midiainteressante.com/wp-content/uploads/2009/01/Carrefour-logo.png?fit=810%2C608&ssl=1'),
                                fit: BoxFit.scaleDown
                              ),
                              borderRadius: BorderRadius.all(Radius.elliptical(32.0, 32.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 500,)

                  ],
                ),
              ),
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
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                width: 50.0,
                height: 50.0,
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
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
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
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

