import 'package:flutter/material.dart';

class Inicio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('José Ernesto Hernández Ramos',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }

}