import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/models/mural.dart';
import 'package:rgis/models/navigation_item.dart';
import 'package:rgis/widgets/bottom_navy_bar.dart';
import 'package:rgis/widgets/card_mural.dart';
import 'package:rgis/widgets/custom_drawer.dart';
import 'package:rgis/widgets/mural_tile.dart';

class HomeView extends StatelessWidget {
  List<Mural> image = [
    Mural(
        title: 'Novos Serviços',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
    Mural(
        title: 'Corana Virus',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjo_21SS0nw2OYu1OoiFQkSk-JyuwOYu063h89-7jpdPNFlyb1&usqp=CAU'),
    Mural(
        title: 'Novas Tecnologias',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(
        title: 'Novas Tecnologias',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(
        title: 'Novas Tecnologias',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(
        title: 'Novas Tecnologias',
        subtitle: 'Teste1',
        dataPublicado: '17/05/2020 10:23',
        image:
            'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
  ];

  List<NavigationItem> items = [
    NavigationItem(color: kColorGrey,title: Text('Home'),icon: Icon(Icons.home), onTap: (){}),
    NavigationItem(color: kColorWine2,title: Text('Likes'),icon: Icon(Icons.favorite_border), onTap: (){}),
    NavigationItem(color: kColorGreen2,title: Text('Search'),icon: Icon(Icons.search), onTap: (){}),
    NavigationItem(color: kColorBlue2,title: Text('Profile'),icon: Icon(Icons.person_outline), onTap: (){}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      drawerScrimColor: kColorGrey,
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavyBar(items: items,),
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
        ),
      ),
    );
  }
}

