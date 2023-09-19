import 'dart:html';

import 'package:flutter/material.dart';

class ejemplo1 extends StatefulWidget{
  @override
  State<ejemplo1> createState() => _ejemplo1State();
}

class _ejemplo1State extends State<ejemplo1> {

  TextEditingController _dato = TextEditingController();
  //°F = (°F - 32) * 5 / 9

  double _result = 0.0;
  bool _validacion = false;
  String mensaje = '';
  double fahrenheit = 0.0;

  void _convertir(){
    setState(() {
      if(_dato.text.toString()==""){
        _validacion = true;
        mensaje = "Campo obligatorio";
        _result = 0.0;
        return;
      }

      fahrenheit = double.parse(_dato.text.toString());

      _result = (fahrenheit - 32) * 5 / 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conversión de °F a °C',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              controller: _dato,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.arrow_forward_ios),
                labelText: '°F',
                hintText: 'Digite temperatura °F',
                errorText: _dato.text.toString()== ""? mensaje : null
              ),
            ),
          ),
        ],
      ),
    );
  }
}