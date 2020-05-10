import 'package:flutter/material.dart';
import 'package:community_app/utils/textApp.dart' as textApp;

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    Container _textWelcome = Container(
      height: size.height,
      width: size.width,
      child: Text(textApp.text['loginTitle'], style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold),),
    );

    Container _images = Container(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 35,
            child: Column(
              children: <Widget>[
                Spacer(flex: 15),
                Flexible(flex: 40,
                    child: Container(
                      height: size.height,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)
                      ),
                    )
                ),
                Spacer(flex: 5,),
                Flexible(flex: 40,
                    child: Container(
                      height: size.height,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)
                      ),
                    )
                ),
              ],
            ),
          ),
          Spacer(flex: 5,),
          Expanded(
            flex: 60,
            child: Container(
              height: size.height,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(12)
              ),
            ),
          )
        ],
      ),
    );

    Container _textIntro = Container(
        child: Text(
          textApp.text['loginIntro'],
          style: TextStyle( fontSize: 17, color: Colors.black45) )
        );

    MaterialButton _loginButton = MaterialButton(
        color: Colors.blue,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
