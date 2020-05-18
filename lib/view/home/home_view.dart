import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';

class HomeView extends StatelessWidget {
  List<String> image = [
    'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjo_21SS0nw2OYu1OoiFQkSk-JyuwOYu063h89-7jpdPNFlyb1&usqp=CAU',
    'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawerScrimColor: kColorGrey,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: kColorGrey),
        title: Text(
          'Mural RGIS',
          style: TextStyle(color: kColorGrey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white10,
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: false,
              reverse: false,
            ),
            items: image.map((i) {
              return ;
            }).toList(),
          ),
          Container(
            height: 500,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        width: returnWidth(
                            small: 10,
                            medium: 12,
                            large: 12,
                            width: MediaQuery.of(context).size.width),
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
                            image: const NetworkImage(
                                'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
