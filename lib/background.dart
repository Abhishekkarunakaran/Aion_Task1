import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            top: -70,
            right: -230,
            child: Circle(
              height: size.width+150,
              width: size.width+150,
            ),
          ),
          Positioned(
            top: 60,
            left: 50,
            child: Circle(
              height: 130,
              width: 130,
              color: Color(0xFF1971B8),
            )
          ),
          Positioned(
              bottom: -380,
              left: -450,
              child: Circle(
                height: size.width+100,
                width: size.height+100,
              )
          ),
        ],
      ),
    );
  }
}


// ignore: must_be_immutable
class Circle extends StatelessWidget {
  double height;
  double width;
  Color color;
  Circle({@required this.width,@required this.height,this.color:const Color(0xFF2196F3)});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      height: height,
      width: width,
    );
  }
}
