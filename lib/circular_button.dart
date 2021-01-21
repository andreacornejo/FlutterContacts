import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {

  final bool enabled;

  CircularButton(this.enabled);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 10.0
      ),

      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: enabled ? Colors.red : Color(0xFFCCCCCC)
      ),
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('La notificación ha sido enviada.')
            )
          );
        },
        child: Icon(
          Icons.mail,
          color: enabled ? Colors.white : Color(0xFF686859)
        ),
      )
    );
  }
}