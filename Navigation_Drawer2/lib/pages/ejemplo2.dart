import 'package:flutter/material.dart';

class ejemplo2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Ejemplo 2',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ))
        ],
      ),
    );
  }

}