import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejercicio 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sueldoBase = 200.0; // Sueldo base inicial
  final double porcentajeComision = 0.15;
  int ventasRealizadas1 = 100;
  int ventasRealizadas2 = 50;
  int ventasRealizadas3 = 50;

  bool showResults = false;

  @override
  Widget build(BuildContext context) {
    // Calcular el total de ventas y comisiones
    double totalVentas = (ventasRealizadas1 + ventasRealizadas2 + ventasRealizadas3).toDouble();
    double totalComisiones = totalVentas * porcentajeComision;
    double sueldoTotal = sueldoBase + totalComisiones;

    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 3'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24),
              Text(
                'Comisión del Empleado',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Sueldo Base: \$${sueldoBase.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Total de Ventas: \$${totalVentas.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Total de Comisiones: \$${totalComisiones.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Sueldo Total: \$${sueldoTotal.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
