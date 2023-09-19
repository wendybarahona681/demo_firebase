import 'package:flutter/material.dart';

class inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/1..jpg"),
          Text("Autor: Samuel Villanueva"),
          Text("samuel.depaz22@itca.edu.sv",
          style: TextStyle(
            color: Colors.black
          ),)
        ],
      )
    );
  }

}