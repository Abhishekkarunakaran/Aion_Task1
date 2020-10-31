import'package:flutter/material.dart';
import 'materials/facebookButton.dart';
import 'materials/googleButton.dart';
import 'materials/login.dart';

class ForeGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:140),
      height: size.height-140,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginBox(),
          SizedBox(
            height: 80,
          ),
          Text('or Login with',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                fontFamily: 'OpenSans'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FacebookButton(),
          SizedBox(
            height: 20,
          ),
          GoogleButton(),
        ],
      ),
    );
  }
}
