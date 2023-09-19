import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Problema 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  TextEditingController num3Controller = TextEditingController();

  String result = '';

  void findLargestNumber() {
    double num1 = double.tryParse(num1Controller.text) ?? 0;
    double num2 = double.tryParse(num2Controller.text) ?? 0;
    double num3 = double.tryParse(num3Controller.text) ?? 0;

    double largest = num1;

    if (num2 > largest) {
      largest = num2;
    }

    if (num3 > largest) {
      largest = num3;
    }

    setState(() {
      result = 'El mayor número es: $largest';
    });
  }

  void clearFields() {
    num1Controller.clear();
    num2Controller.clear();
    num3Controller.clear();
    setState(() {
      result = '';
    });
  }

  void showAboutDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Acerca de'),
          content: Text('Esta es una aplicación simple para encontrar el mayor de tres números.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  void showAuthorDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Autor'),
          content: Text('Desarrollado por Alex'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 1'),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            onPressed: showAuthorDialog,
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: showAboutDialog,
            icon: Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Números Mayores',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/numeros.png',
                width: 200,
              ),
              SizedBox(height: 20),
              CustomResultWidget(result: result),
              SizedBox(height: 20),
              buildNumberTextField(
                controller: num1Controller,
                label: 'Ingrese el Número 1',
                iconPath: 'images/numero1.png',
              ),
              SizedBox(height: 10),
              buildNumberTextField(
                controller: num2Controller,
                label: 'Ingrese el Número 2',
                iconPath: 'images/numero2.png',
              ),
              SizedBox(height: 10),
              buildNumberTextField(
                controller: num3Controller,
                label: 'Ingrese el Número 3',
                iconPath: 'images/numero3.png',
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (num1Controller.text.isEmpty ||
                          num2Controller.text.isEmpty ||
                          num3Controller.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Ha dejado campos vacíos'),
                              content: Text('Por favor, ingrese números en todos los campos.'),
                              actions: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Aceptar'),
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        findLargestNumber();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                    child: Text('Encontrar el mayor número', style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: clearFields,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Limpiar', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNumberTextField({required TextEditingController controller, required String label, required String iconPath}) {
    return TextField(
      controller: controller,
      style: TextStyle(color: Colors.black), // Color del texto dentro del TextField
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.green), // Color del texto del label
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2.0), // Borde cuando el TextField está enfocado
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0), // Borde por defecto
        ),
        prefixIcon: Image.asset(iconPath, width: 24),
        hintText: 'Ingrese un número',
        hintStyle: TextStyle(color: Colors.red), // Color del hint del TextField
      ),
      keyboardType: TextInputType.number,
    );
  }
}

class CustomResultWidget extends StatelessWidget {
  final String result;

  const CustomResultWidget({required this.result});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        result,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
