import 'package:flutter/material.dart';
class pages1 extends StatefulWidget {
  @override
  State<pages1> createState() => _Pages1State();
}

class _Pages1State extends State<pages1> {
  TextEditingController _dato = TextEditingController();

  @override

  Widget build(BuildContext context) {
    return Center (

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Conversion de °F a °C',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.redAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              keyboardType: TextInputType.text,
              obscureText: false,
              maxLength: 3,
              controller: _dato,
              decoration: InputDecoration(
                labelText: '°F',
                hintText: 'digite la ttemperatura en grados °F',
                icon: Icon(Icons.arrow_forward_ios,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Text(
            '0.0',
            style: TextStyle(
              fontSize: 50,
              color: Colors.blue,
            ),
          ),
          ElevatedButton(
              onPressed: () {}
              , child: Text('Calcular') )
        ],
      ),
      //child: Text ('pantalla 1')
    );
  }
}