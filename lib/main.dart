import 'package:flutter/material.dart';
import 'package:task_1/background.dart';
import 'package:task_1/foreground.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Page(),
  ));
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: Stack(
          fit: StackFit.loose,
          children:<Widget>[
            BackGround(),
            ForeGround(),
            Positioned(
              bottom:20,
                right: 20,
                child: Register()
            ),
          ]
        ),
      ),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          //for funtionality
        },
        child:Text('REGISTER',
          style: TextStyle(
            color: Color(0xFF0964B5),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),),
        );
  }
}
