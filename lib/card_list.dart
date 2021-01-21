import 'package:Challenge_3/card.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        User("assets/img/people.jpg",'Martha Rojas', 'Developer Full-Stack', false),
        Divider(),
        User('assets/img/people.jpg','Martha Rojas', 'Developer Full-Stack', true),
        Divider(),
        User("assets/img/people.jpg",'Martha Rojas', 'Developer Full-Stack', false),
        Divider(),
        User('assets/img/people.jpg','Martha Rojas', 'Developer Full-Stack', true),
      ],
    );

  //   List<Widget> cardlist = [];
  //       cardlist.add(User('assets/img/people.jpg','Martha Rojas', 'Developer Full-Stack', false));
    

  //   for(int i = 0; i < 10; i++){
  //     cardlist.add(Divider());
  //     cardlist.add(User('assets/img/people.jpg','Martha Rojas', 'Developer Full-Stack', true));
  //   }

  //  return Container(
  //    margin: EdgeInsets.only(
  //      top:100.0
  //    ),
  //    child: ListView(
  //      children: cardlist,
  //    )
  //  );
  }

}