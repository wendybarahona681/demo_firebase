import 'package:flutter/material.dart';

class Ejemplo1 extends StatefulWidget{
  @override
  State<Ejemplo1> createState() => _Ejemplo1State();
}

class _Ejemplo1State extends State<Ejemplo1> {
  TextEditingController _dato = TextEditingController();
  //°C = (°F - 32) * 5 / 9
  double result = 0.0;
  bool validacion = false;
  String mensaje = '';
  double _fahrenheit = 0.0;
  void _convertir(){
    setState(() {
      if(_dato.text.toString()==""){
        validacion = true;
        mensaje = "Campo obligatori";
        result = 0.0;
      }
      _fahrenheit = double.parse(_dato.text.toString());
      //°C = (°F - 32) * 5 / 9
      result = (_fahrenheit -32) *5 / 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conversion de °F a °C',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              controller: _dato,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '°F',
                hintText: 'digite temperatura °F',
                  errorText: _dato.text.toString() == ""? mensaje: null
              ),
            ),
          ),
          Text('${result.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.orange
          ),
          ),
          ElevatedButton(
            onPressed: (){
              _convertir();
            },

            child: Text('convertir °F a °C'),
          )
        ],
      ),
    );
  }
}