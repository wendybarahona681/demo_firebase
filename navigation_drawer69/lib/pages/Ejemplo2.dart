
import 'package:flutter/material.dart';

class Ejemplo2 extends StatefulWidget{
  @override
  State<Ejemplo2> createState() => _Ejemplo2State();
}

class _Ejemplo2State extends State<Ejemplo2> {

  TextEditingController dato = TextEditingController();
  TextEditingController dato2 = TextEditingController();

  bool validacion = false;
  String mensaje = '';
  double suma = 0;
  double capital = 0.0;
  double multiplicacion = 0;
  double meses = 0.0;

  void proceso(){
    setState(() {
      if(dato.text.toString()==""||
          dato2.text.toString()==""){
        validacion = true;
        mensaje = "Campo obligatorio";
        suma = 0.0;
      }
      capital=double.parse(dato.text.toString());
      meses=double.parse(dato2.text.toString());
      multiplicacion = meses * .02;

      suma = capital + multiplicacion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Calcular capital a invertir',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: dato,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Capital',
                hintText: 'Ingrese su capital'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: dato2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Meses',
                  hintText: 'Ingrese los meses'
              ),
            ),
          ),
          Text('${suma.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.green
          ),
          ),
          ElevatedButton(
            onPressed: (){
              proceso();
            },

            child: Text('Calcular'),
          )
        ],
      ),
    );
  }
}