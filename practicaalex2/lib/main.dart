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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mi primer App por Alex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*
*En esta seccion se codifica la logica de la aplicacion
* utilizando la POO.
 */
  TextEditingController _name= TextEditingController();
  TextEditingController _n1= TextEditingController();
  TextEditingController _n2= TextEditingController();
  TextEditingController _n3= TextEditingController();
  TextEditingController _n4= TextEditingController();

  String _nombre = "";
  double _nota1 = 0.0;
  double _nota2 = 0.0;
  double _nota3 = 0.0;
  double _nota4 = 0.0;
  double _pm = 0.0;

  String _mensaje = '';
  bool _validar = false;

  void _promedio(){
    setState(() {
      if (_n1.text.toString()=='' ||
          _n2.text.toString()=='' ||
          _n3.text.toString()=='' ||
          _n4.text.toString()=='' ){
        _mensaje = 'Campo obligatorio';
        _validar = true;
        return;
      }
      _nombre = _name.text.toString();
      _nota1 = double.parse(_n1.text.toString());
      _nota2 = double.parse(_n2.text.toString());
      _nota3 = double.parse(_n3.text.toString());
      _nota4 = double.parse(_n4.text.toString());
      _pm = (_nota1 + _nota2 + _nota3 + _nota4) / 4;

    });

  }

  void _nuevo(){
    setState(() {

    });
  }

  void _acercade(){

  }

//apartir de este bloque va el disieño (UI) de mi aplicacion
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
//Scrollview sirve para hacer una barra de desplazamiento vertical
// la funcion que tiene  me permite ver tdodos los controles que tiene la pantalla
        //y poder dezplazarme
        child: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Promedio de notas',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent
                ),
              ),
              Image.asset(''
                  'images/logo.png',
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: TextField(
                  //tipo de teclado, numeros o letras
                  keyboardType: TextInputType.text,
                  //tipo contraseña si es verdadera o false sino
                  obscureText: false,
                  //variable controladora guardar el dato que el usuario escribe atraves de una variable controladora
                  controller: _name,
                  decoration: InputDecoration (
                    labelText: 'Nombre',
                    hintText: 'Digite su nombre',
                    icon: Icon(
                      Icons.person,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: TextField(
                  //tipo de teclado, numeros o letras
                  keyboardType: TextInputType.number,
                  //tipo contraseña si es verdadera o false sino
                  obscureText: false,
                  //variable controladora guardar el dato que el usuario escribe atraves de una variable controladora
                  controller: _n1,
                  decoration: InputDecoration (
                    labelText: 'Nota 1',
                    hintText: 'Digite nota 1',
                    errorText: _n1.text.toString()== " "? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: TextField(
                  //tipo de teclado, numeros o letras
                  keyboardType: TextInputType.number,
                  //tipo contraseña si es verdadera o false sino
                  obscureText: false,
                  //variable controladora guardar el dato que el usuario escribe atraves de una variable controladora
                  controller: _n2,
                  decoration: InputDecoration (
                    labelText: 'Nota 2',
                    hintText: 'Digite nota 2',
                    errorText: _n2.text.toString()== " "? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: TextField(
                  //tipo de teclado, numeros o letras
                  keyboardType: TextInputType.number,
                  //tipo contraseña si es verdadera o false sino
                  obscureText: false,
                  //variable controladora guardar el dato que el usuario escribe atraves de una variable controladora
                  controller: _n3,
                  decoration: InputDecoration (
                    labelText: 'Nota 3',
                    hintText: 'Digite nota 3',
                    errorText: _n3.text.toString()== " "? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 0),
                child: TextField(
                  //tipo de teclado, numeros o letras
                  keyboardType: TextInputType.number,
                  //tipo contraseña si es verdadera o false sino
                  obscureText: false,
                  //variable controladora guardar el dato que el usuario escribe atraves de una variable controladora
                  controller: _n4,
                  decoration: InputDecoration (
                    labelText: 'Nota 4',
                    hintText: 'Digite nota 4',
                    errorText: _n4.text.toString()== " "? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text(
                '$_pm',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _promedio();
                      },
                      child: Text('Calcular')),
                  ElevatedButton(
                      onPressed: () {

                      },
                      child: Text('Nuevo')),
                  ElevatedButton(
                      onPressed: (){
                      },
                      child: Text('Autor')),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}