import 'package:flutter/material.dart';
import 'package:rgis/view/login/login_view.dart';
import 'package:rgis/view/profile/profile_view.dart';
import 'package:rgis/widgets/list_tile_drawer.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Flex(
        direction: Axis.vertical,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50, left: 32),
                  child: Row(
                    children: <Widget>[
                      Hero(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://media.glassdoor.com/l/e5/93/7e/cd/tablet-verification.jpg'),
                        ),
                        tag: 'Perfil',
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'RGIS - Employee',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Bem vindo, Leandro',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Flexible(
            flex: 10,
            child: Padding(
              padding: EdgeInsets.only(left: 32, right: 32),
              child: ListView(
                children: <Widget>[
                  ListTileDrawer(
                    onTap: (){},
                    icon: Icons.new_releases,
                    label: 'Mural RGIS',
                    selection: false,
                  ),
                  ListTileDrawer(
                    onTap: (){
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProfileView())
                      );
                    },
                    icon: Icons.person,
                    label: 'Meu Perfil',
                    selection: true,
                  ),
                  ListTileDrawer(
                    onTap: (){},
                    icon: Icons.access_alarms,
                    label: 'Escala',
                    selection: false,
                  ),
                  Divider(
                    height: 4,
                    color: Colors.grey,
                  ),
                  ListTileDrawer(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=> LoginView())
                      );
                    },
                    icon: Icons.exit_to_app,
                    label: 'Desconectar',
                    selection: false,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
