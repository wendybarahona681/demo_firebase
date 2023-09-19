import 'package:flutter/material.dart';

class Ejemplo3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Ejemplo 3',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}