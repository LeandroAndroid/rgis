import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';
import 'package:rgis/models/mural.dart';
import 'package:rgis/widgets/card_mural.dart';
import 'package:rgis/widgets/mural_tile.dart';

class HomeView extends StatelessWidget {

  List<Mural> image = [
    Mural(title: 'Novos Serviços', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
    Mural(title: 'Corana Virus', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSjo_21SS0nw2OYu1OoiFQkSk-JyuwOYu063h89-7jpdPNFlyb1&usqp=CAU'),
    Mural(title: 'Novas Tecnologias', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(title: 'Novas Tecnologias', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(title: 'Novas Tecnologias', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
    Mural(title: 'Novas Tecnologias', subtitle: 'Teste1', dataPublicado: '17/05/2020 10:23', image: 'https://cdn.awsli.com.br/600x450/26/26503/produto/31963057/6bfff3df86.jpg'),
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
          Container(
            child: CarouselSlider(
              options: CarouselOptions(
                height: 200,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: false,
                reverse: false,
              ),
              items: image.map((i) {
                return CardMural(mural: i,);
              }).toList(),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Noticias', style: TextStyle(
                fontSize: 25,
                color: kColorGrey,
                fontWeight: FontWeight.w300
              ),),
            ),
          ),
          Container(
            height: 500,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: image.length,
                itemBuilder: (context, index){
              return Center(
                child: MuralTile(mural: image[index],),
              );
            }),
          ),
        ],
      ),
    );
  }
}
