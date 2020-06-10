import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/models/navigation_item.dart';
import 'package:rgis/service/news_database_api.dart';
import 'package:rgis/widgets/bottom_navy_bar.dart';
import 'package:rgis/widgets/card_feactured.dart';
import 'package:rgis/widgets/custom_drawer.dart';
import 'package:rgis/widgets/mural_tile.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

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
        onTap: () {})
  ];

  NewsDatabaseApi api  = NewsDatabaseApi();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kColorBackground,
      drawerScrimColor: kColorGrey,
      drawer: CustomDrawer(),
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
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FutureBuilder(
                  future: api.fetchMuralFeatured(),
                  initialData: [],
                  builder: (context, snapshot){
                    if(!snapshot.hasData){
                      return Container(
                        height: 240,
                        child: Center(child:CircularProgressIndicator()),
                      );
                    }else{
                      return Container(
                        height: 240,
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return CardFeactured(mural: snapshot.data[index]);
                          },
                          itemWidth: 288.0,
                          itemCount: snapshot.data.length,
                          itemHeight: 220,
                          layout: SwiperLayout.STACK,
                        ),
                      );
                    }
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Notícias', style: kTitleWhite.copyWith(
                      color: Colors.blueAccent,
                      fontSize: 25
                  ),),
                ),
                Container(
                  height: 400,
                  child: FutureBuilder(
                    future: api.fetchMural(),
                    initialData: [],
                    builder: (context, snapshot){
                      if(!snapshot.hasData){
                        return Container(
                          height: 240,
                          child: Center(child:CircularProgressIndicator()),
                        );
                      }else{
                        return  ListView.builder(
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index){
                              return Center(child: MuralTile(mural: snapshot.data[index]),);
                            }
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavyBar(
              items: items,
            ),
          ),
        ],
      ),
    );
  }
}
