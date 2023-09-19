import 'package:flutter/material.dart';

class Page1 extends StatefulWidget{
  @override
  State<Page1> createState() => _Page1State ();
  }

class _Page1State extends State<Page1>{
  TextEditingController _dato= TextEditingController();
  //oC = (oF -32)*5/9

  double _result=0.0;
  bool _validacion= false;
  String _mensaje = '';
  double _fahrenheit =0.0;

  void _convertir(){
    setState(() {
      if (_dato.text.toString()=="") {
        _validacion = true;
        _mensaje = "Campo obligatorio";
        _result = 0.0;
        return;
      }
      _fahrenheit= double.parse(_dato.text.toString());
      _result = (_fahrenheit -32) * 5 / 9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(

        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('conversion de oF a oC',
                style: TextStyle (
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.pink
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller:_dato,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'oF',
                      hintText: 'Digite temperatura oF',
                      errorText: _dato.text.toString() == "" ? _mensaje : null
                  ),
                ),
              ),
              Text('${_result.toStringAsFixed(2)}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.green
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  _convertir();
                },
                child: Text('convertir 0F a oC'),

              )
            ]
        )
    );
}
}
