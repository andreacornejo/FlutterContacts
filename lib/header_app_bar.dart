import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget{

  String title = "Designer";

  HeaderAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//     return Container(
//       height: 100.0,
//       decoration: BoxDecoration(
//         boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5.0,
//               blurRadius: 8.0,
//               offset: Offset(1.0, 2.0),
//             ),
//           ],
//         gradient: LinearGradient(
//           colors: [
//             Color(0xFF159957),
//             Color(0xFF155799)
//           ],
//           begin: FractionalOffset(0.2, 0.0),
//           end: FractionalOffset(1.0, 0.6),
//             stops: [0.0, 0.6],
//             tileMode: TileMode.clamp
//         ),
//       ),
      
//       child: Text(
//         title,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 30.0,
//           fontFamily: "Barlow",
//           fontWeight: FontWeight.bold
//         ),
//       ),

//       alignment: Alignment(0.0, 0.1),

//     );
//   }

final background = ClipPath(
      clipper: new MyClipper(),
      child: Container(
        height: 130.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF5396CA),
              Color(0xFF316082)
            ],
            begin: FractionalOffset(0.2, 0.0),
            end: FractionalOffset(0.9, 0.9),
            stops: [0.0, 0.8],
            tileMode: TileMode.clamp
          )
        ),

        child: Center(
          child: Text(
            title.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Barlow Semi Condensed',
              fontSize: 22.0,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            )
          ),
        ),
      )
    );

    final menu = Container(
      margin: EdgeInsets.only(
        top: 40.0,
        left: 20.0
      ),
      child: Icon(
        Icons.menu,
        color: Colors.white,
        size: 30.0,
      )
    );

    return Stack(
      children: <Widget>[
        background,
        menu
      ],
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    double eighthPartW = size.width / 8;
    double dLine = size.height-50.0;
    path.lineTo(0.0, dLine);
    path.cubicTo((eighthPartW*2), dLine, (eighthPartW*4), size.height, (eighthPartW*6), dLine);
    path.moveTo((eighthPartW*2), dLine);
    path.cubicTo((eighthPartW*4), size.height, (eighthPartW*6), dLine, size.width, dLine);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
