import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Promedio (CUM)'),
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
  int _counter = 0;

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
  double _pm = 0.0;

  bool _validar = false;
  String _mensaje = "";

  void _promedio(){
    //print('Estás en el método promedio');
    _validar = false;
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

      _pm = (_nota1 + _nota2 + _nota3 + _nota4) / 4;

      if(_pm >= 7){
        _dialogAll(QuickAlertType.success, 'APROBADO');
      }else{
        _dialogAll(QuickAlertType.error, 'REPROBADO');
      }
    });
  }

  void _dialog(){
    QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      title: 'Información',
      text: 'Bienvenido programador',
    );
  }
  void _dialogAll(QuickAlertType quickAlertType, estado){
    QuickAlert.show(
      context: context,
      type: quickAlertType,
      title: 'Información',
      text: estado,
    );
  }

  void _nuevo(){
    //print('Estás en el método nuevo');
    setState(() {
      _name.clear();
      _n1.clear();
      _n2.clear();
      _n3.clear();
      _n4.clear();
      _pm = 0.0;
    });
  }

  void _acercade(){
    //print('Estás en el método acerca de');
  }


  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: SingleChildScrollView(
          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'Formulario de Notas',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber
                  )
              ),
              SizedBox(height: 30),
              Image.asset(
                'images/LogoMegatec.png',
                width: 350,),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller: _name,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Digite su nombre',
                    icon: Icon(
                      Icons.person,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller: _n1,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nota 1',
                    hintText: 'Digite la nota 1',
                    errorText: _n1.text.toString() == "" ? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller: _n2,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nota 2',
                    hintText: 'Digite la nota 2',
                    errorText: _n2.text.toString() == "" ? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller: _n3,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nota 3',
                    hintText: 'Digite la nota 3',
                    errorText: _n3.text.toString() == "" ? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: TextField(
                  controller: _n4,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Nota 4',
                    hintText: 'Digite la nota 4',
                    errorText: _n4.text.toString() == "" ? _mensaje : null,
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                '$_pm',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: (){
                        _promedio();
                      },
                      child: Text('Calcular')
                  ),
                  SizedBox(width: 10,),
                  ElevatedButton(
                      onPressed: (){
                        _nuevo();
                      },
                      child: Text('Nuevo')
                  ),SizedBox(width: 10,),
                  ElevatedButton(
                      onPressed: (){
                        _dialog();
                      },
                      child: Text('Desarrolador')
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
