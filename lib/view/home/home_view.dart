import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/models/navigation_item.dart';
import 'package:rgis/widgets/bottom_navy_bar.dart';
import 'package:rgis/widgets/card_mural.dart';
import 'package:rgis/widgets/custom_drawer.dart';

class HomeView extends StatelessWidget {


  List<NavigationItem> items = [
    NavigationItem(
        color: kColorGrey,
        title: Text('Home'),
        icon: Icon(Icons.home),
        onTap: () {}),
    NavigationItem(
        color: kColorWine2,
        title: Text('Likes'),
        icon: Icon(Icons.favorite_border),
        onTap: () {}),
    NavigationItem(
        color: kColorGreen2,
        title: Text('Search'),
        icon: Icon(Icons.search),
        onTap: () {}),
    NavigationItem(
        color: kColorBlue2,
        title: Text('Profile'),
        icon: Icon(Icons.person_outline),
        onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      drawerScrimColor: kColorGrey,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavyBar(
        items: items,
      ),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                //height: 300,
                child: Swiper(
                  itemCount: image.length,
                  itemWidth: MediaQuery.of(context).size.width * 60,
                  fade: 10,
                  pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.white,
                      activeColor: kColorGrey,
                      space: 8,
                      activeSize: 15,
                    )
                  ),
                  itemHeight:250,
                  layout: SwiperLayout.TINDER,
                  itemBuilder: (context, index) {
                    return CardMural(
                      mural: image[index],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
