import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginBox extends StatefulWidget {
  @override
  _LoginBoxState createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: size.width-120,
          width: size.width-30,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  offset: Offset(5, 5),
                  blurRadius: 15,
                  color: Colors.black38,
                )
              ]
          ),
          child: Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('LOGIN',
                  style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF167DDB),
                    fontSize: 40,
                    fontFamily: 'OpenSans',
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email (Required)',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400
                      )
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password (Required)',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400
                      ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (){
                    //for funtionality
                  },
                  child: Text('Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom:-40,
            right: 30,
            child: NextButton()
        )
      ],
    );
  }
}

class NextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: (){
            //for funtionality
          },
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xFF2196F3),
              shape: BoxShape.circle,
            ),
            child: Center(child: FaIcon(Icons.keyboard_arrow_right,
              size: 50,color: Colors.white,)),
          ),
        )
    );
  }
}
