import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Mi Primer App'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
/*
En esta seccion se codifica la logica de programacion
Utilizando POO
 */
class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _n1 = TextEditingController();
  TextEditingController _n2 = TextEditingController();
  TextEditingController _n3 = TextEditingController();
  TextEditingController _n4 = TextEditingController();

  String _nombre = "";
  double _nota1 = 0.0;
  double _nota2 = 0.0;
  double _nota3 = 0.0;
  double _nota4 = 0.0;
  double _pro = 0.0;

  String mensaje = "";
  bool _validar = false;


  void _promedio(){
    setState(() {
      if(_n1.text.toString() == '' ||
          _n2.text.toString() == '' ||
          _n3.text.toString() == '' ||
          _n4.text.toString() == ''){
        _validar = true;
        _mensaje = 'Campo obligatorio';
        return;
      }

      _nombre = _name.text.toString();
      _nota1 = double.parse(_n1.text.toString());
      _nota2 = double.parse(_n2.text.toString());
      _nota3 = double.parse(_n3.text.toString());
      _nota4 = double.parse(_n4.text.toString());

      _pro = (_nota1 + _nota2 + _nota3 + _nota4) / 4;


      }
    });
  }
  void _nuevo(){
    setState(() {

    });
  }

  void_acercade(){

  }
//Apartir de este bloque va el UI de mi aplicacion
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    'PROMEDIO DE NOTAS',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green)
                ),
                Image.asset(
                  'images/logo.png',
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 0),
                  child: TextField(

                    keyboardType: TextInputType.text,
                    obscureText: false,
                    controller: _name,
                    decoration: InputDecoration(
                        labelText: 'Nombre',
                        hintText:' Digite su nombre',
                        icon: Icon(Icons.person,
                          color : Colors.lightBlue,
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 0),
                  child: TextField(

                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _n1,
                    decoration: InputDecoration(
                        labelText: 'Nota 1',
                        hintText:' Digite su Nota 1',
                        icon: Icon(Icons.arrow_back_ios,
                          color : Colors.lightBlue,
                        )
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 0),
                  child: TextField(

                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _n2,
                    decoration: InputDecoration(
                        labelText: 'Nota 2',
                        hintText:' Digite su Nota 2',
                        icon: Icon(Icons.arrow_back_ios,
                          color : Colors.lightBlue,
                        )
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 0),
                  child: TextField(

                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _n3,
                    decoration: InputDecoration(
                        labelText: 'Nota 3',
                        hintText:' Digite su Nota 3',
                        icon: Icon(Icons.arrow_back_ios,
                          color : Colors.lightBlue,
                        )
                    ),
                  ),
                ), Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15,top: 0,bottom: 0),
                  child: TextField(

                    keyboardType: TextInputType.number,
                    obscureText: false,
                    controller: _n4,
                    decoration: InputDecoration(
                        labelText: 'Nota 4',
                        hintText:' Digite su Nota 4',
                        icon: Icon(Icons.arrow_back_ios,
                          color : Colors.lightBlue,
                        )
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('0.0',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: (){},
                        child: Text('Calcular')),
                  ],
                ),
              ],
            ),
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
