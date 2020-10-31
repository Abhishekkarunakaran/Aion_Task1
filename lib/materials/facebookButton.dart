import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //for funtionality
      },
      child: Container(
          decoration: BoxDecoration(
          color: Color(0xFF1878F3),
          borderRadius: BorderRadius.circular(5),
          boxShadow:[
            BoxShadow(
              offset: Offset(2, 2),
              blurRadius: 5,
              color: Colors.black38,
            )
          ]
          ),
          height: 40,
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FaIcon(FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
              Text('Login With Facebook',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
      ),
    );
  }
}
