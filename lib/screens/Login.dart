import 'package:flutter/material.dart';
import 'package:community_app/utils/textApp.dart' as textApp;

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final _textWelcome = Container(
      child: Center(child: Text(textApp.text['loginTitle']),),
      color: Colors.blueGrey,
    );

    final _images = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Spacer(flex: 2),
                Flexible(flex: 4, child: Container( height: size.height, color: Colors.red,) ),
                Flexible(flex: 4, child: Container( height: size.height, color: Colors.green,) ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: size.height,
              color: Colors.black,
            ),
          )
        ],
      ),
    );

    final _textIntro = Container(child: Text(textApp.text['loginIntro']));

    final _loginButton = MaterialButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(child: Text('Iniciar con Google')),
        ),
        onPressed: () =>  print('Login')
    );

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible( flex: 20,  child: _textWelcome),
              Flexible(flex: 45, child: _images),
              Spacer(flex: 5,),
              Flexible(flex: 15, child: _textIntro),
              Spacer(flex: 5,),
              Flexible(flex: 10, child: _loginButton)
            ],
          ),
        ),
      ),
    );
  }

}
