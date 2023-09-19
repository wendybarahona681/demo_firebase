
import 'package:flutter/material.dart';


class Ejemplo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcular de Perímetro de Rectángulo',
      home: PerimetroRectangulo(),
    );
  }
}

class PerimetroRectangulo extends StatefulWidget {
  @override
  _PerimetroRectanguloState createState() => _PerimetroRectanguloState();
}

class _PerimetroRectanguloState extends State<PerimetroRectangulo> {
  TextEditingController baseController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  double resultado = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Perímetro de Rectángulo'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: baseController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Base del Rectángulo'),
              ),
              TextField(
                controller: alturaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Altura del Rectángulo'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  calcularPerimetro();
                },
                child: Text('Calcular Perímetro'),
              ),
              SizedBox(height: 20),
              Text('Resultado: $resultado'),
            ],
          ),
        ),
      ),
    );
  }

  void calcularPerimetro() {
    double base = double.tryParse(baseController.text) ?? 0.0;
    double altura = double.tryParse(alturaController.text) ?? 0.0;
    double perimetro = 2 * (base + altura);

    setState(() {
      resultado = perimetro;
    });
  }
}

