import 'package:flutter/material.dart';

class VerificationIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Color.fromRGBO(17, 129, 195, 1.0)
        ),
        child: Icon(Icons.check, color: Colors.white, size: 10,)
    );
  }
}
