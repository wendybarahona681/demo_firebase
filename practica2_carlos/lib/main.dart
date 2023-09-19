import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
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

class _MyHomePageState extends State<MyHomePage> {
  /*
  /*
  *En este apartado

   */
   */
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

    //apartir de este metodo vamos a crear el diseño bde muestra aplicacion

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
                "Complete el formulario",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                    color: Colors.blue
                ),
              ), // Text
              Image.asset(
                 "imagen/1.png",
                width: 250,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "Name",
                        hintText: "Digite su nombre",
                    icon: Icon(Icons.person),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "NOTA 1",
                    hintText: "Digite Nota 1",
                    suffixIcon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "NOTA 2",
                    hintText: "Digite Nota 2",
                    suffixIcon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "NOTA 3",
                    hintText: " Digite Nota 3",
                    suffixIcon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  //controller: ,
                  decoration: InputDecoration(
                    labelText: "NOTA 4",
                    hintText: " Digite Nota 4",
                    suffixIcon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
             SizedBox(height: 15, ),
              const Text("0.0",
              style: TextStyle(
                fontSize: 50,
              color:  Colors.black,
              fontWeight: FontWeight.bold
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
              onPressed:(){

                  },
                  child: Text('Calcular')),
                  ElevatedButton(onPressed:(){

                  },child: Text("Nuevo")),
                  ElevatedButton( onPressed: (){

                   },child: Text("Autor")),
                ],
              ),


              //   'You have pushed the button this many times:',
              // ),
              // Text(
              //   '$_counter',
              //   style: Theme.of(context).textTheme.headlineMedium,
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
