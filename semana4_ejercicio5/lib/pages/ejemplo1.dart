
import 'package:flutter/material.dart';

class ejemplo1 extends StatefulWidget {
  @override
  State<ejemplo1> createState() => _ejemplo1State();
}

class _ejemplo1State extends State<ejemplo1> {

  TextEditingController _dato = TextEditingController();
//°C = (°F - 32) * 5/9

  double _result = 0.0;
  bool _validacion = false;
  String mensaje = '';
  double farhenheit = 0.0;

  void _convertir(){
    setState(() {
      if(_dato.text.toString()==""){
        _validacion = true;
        mensaje = "Campo obligatorio";
        _result = 0.0;
        return;
      }
      farhenheit = double.parse(_dato.text.toString());

      _result = (farhenheit - 32)* 5 / 9;

    });
  }




  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conversion de Grados °F a °C',
            style: TextStyle(
                fontSize: 25,
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
                hintText: 'Digite Temparatura °F',
                errorText: _dato.text.toString() =="" ? mensaje : null,
              ),
            ),
          ),
          Text('${_result.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.green,
              )
          ),
          ElevatedButton(
              onPressed: (){
                _convertir();
              },
              child: Text('Convertir °F a °C'))

        ],
      ),
    );
  }
}