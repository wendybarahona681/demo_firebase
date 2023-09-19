import 'package:flutter/material.dart';

void main() {
  runApp(ContactFormApp());
}

class ContactFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple, // Fondo morado
        appBar: AppBar(
          title: Text('Contact Form'),
          backgroundColor: Colors.black, // Barra de navegación en negro
        ),
        body: ContactForm(),
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create a contact form',
            style: TextStyle(
              color: Colors.white, // Texto blanco
              fontSize: 20.0,
            ),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'What is your email address?',
              icon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Do you want us to reach you?',
            style: TextStyle(
              color: Colors.white, // Texto blanco
              fontSize: 18.0,
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: true, // Puedes ajustar el valor según tu necesidad
                onChanged: (bool? newValue) {},
              ),
              Text('YES', style: TextStyle(color: Colors.white)),
              SizedBox(width: 10.0),
              Checkbox(
                value: false, // Puedes ajustar el valor según tu necesidad
                onChanged: (bool? newValue) {},
              ),
              Text('NO', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Lógica cuando se presiona el botón
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, // Fondo negro
            ),
            child: Text(
              'Generate with AI',
              style: TextStyle(
                color: Colors.white, // Texto blanco
              ),
            ),
          ),
        ],
      ),
    );
  }
}
