import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';
import 'package:rgis/constants/functions.dart';
import 'package:rgis/view/home/home_view.dart';
import 'package:rgis/widgets/custom_text_field.dart';

class LoginView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorBackground,
      body: Container(
        decoration: BoxDecoration(gradient: kLinearGradientGrey),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: returnWidth(small: 11, medium: 8, large: 8, width: MediaQuery.of(context).size.width),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('icons/rgis-logo-white.png'),
                  SizedBox(height: 16,),
                  CustomTextField(
                    hint: 'Email',
                    prefix: Icon(Icons.email),
                  ),
                  SizedBox(height: 16,),
                  CustomTextField(
                    hint: 'Senha',
                    prefix: Icon(Icons.lock),
                  ),
                  SizedBox(height: 16,),
                  Container(
                    height: 48,
                    child: RaisedButton(
                      elevation: 0,
                      color: kColorWine,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      onPressed: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=> HomeView())
                        );
                      },
                      child: Text('ENTRAR', style: kTitleWhite.copyWith(fontSize: 15),),
                    ),
                  ),
                  SizedBox(height: 16,),
                  FlatButton(
                    onPressed: (){},
                    child: Text('Esqueceu a senha?', style: kTitleWhite.copyWith(fontWeight: FontWeight.w400, fontSize: 15),),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
