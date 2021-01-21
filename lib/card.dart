import 'package:flutter/material.dart';
import 'circular_button.dart';

class User extends StatelessWidget{

  final String pathImage;
  final String name;
  final String description;
  final bool actionEnabled;

  User(this.pathImage, this.name, this.description, this.actionEnabled);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 80.0,
      height: 80.0,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover
        )
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Barlow',
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.black54
        ),
      ),
    );

    final userDescription = Container(
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0
      ),
      child: Text(
        description,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Barlow',
          fontSize: 18.0,
          color: Colors.black45
        )
      ),
    );

    final userInfo = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userDescription
      ]
    );

    final userAction = new CircularButton(actionEnabled);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        photo,
        userInfo,
        userAction
      ],
    );
  }

}