import 'package:flutter/material.dart';

void main() {
  runApp(Ejemplo3());
}

class Ejemplo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Verificación SMO',
      home: SMOCheckScreen(),
    );
  }
}

class SMOCheckScreen extends StatefulWidget {
  @override
  _SMOCheckScreenState createState() => _SMOCheckScreenState();
}

class _SMOCheckScreenState extends State<SMOCheckScreen> {
  TextEditingController birthYearController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verificación SMO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ingresa tu año de nacimiento:',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 10),
            Container(
              width: 100.0,
              child: TextField(
                controller: birthYearController,
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int birthYear = int.tryParse(birthYearController.text) ?? 0;
                int currentYear = DateTime.now().year;
                int age = currentYear - birthYear;

                if (age >= 18) {
                  setState(() {
                    result = 'Debes inscribirte en el Servicio Militar Obligatorio. Tu edad es $age años.';
                  });
                } else {
                  setState(() {
                    result = 'No debes inscribirte en el Servicio Militar Obligatorio. Tu edad es $age años.';
                  });
                }
              },
              child: Text('Verificar'),
            ),
            SizedBox(height: 20),
            Text(
              result,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
