import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //for funtionality
      },
      child: Container(
          decoration: BoxDecoration(
          color: Color(0xFF4A86E8),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
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
                  Image(image:AssetImage('image/google_g.png')),
                  Text('Login With Google',
                    style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          ),
                      )
                  ]
          )
      ),
    );
  }
}
