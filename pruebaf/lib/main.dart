import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejercicio 8'),
          backgroundColor: Colors.pink, // Cambio de color de fondo del AppBar
        ),
        body: RegistrationForm(),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // TODO: Handle drawer item tap
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // TODO: Handle drawer item tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
                child: Image.asset(
                  'images/hombre.png',
                ),
              ),
              SizedBox(height: 22),
              TextFieldWithStyle(hintText: 'First Name'),
              SizedBox(height: 22),
              TextFieldWithStyle(hintText: 'Last Name'),
              SizedBox(height: 22),
              TextFieldWithStyle(hintText: 'Username'),
              SizedBox(height: 22),
              TextFieldWithStyle(hintText: 'Email Address'),
              SizedBox(height: 22),
              TextFieldWithStyle(hintText: 'Password', isPassword: true),
              SizedBox(height: 22),
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  SizedBox(width: 5),
                  Text(
                    'I agree to the terms',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Handle register button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Cambio de color de fondo a blanco
                  ),
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWithStyle extends StatefulWidget {
  final String hintText;
  final bool isPassword;

  const TextFieldWithStyle({
    required this.hintText,
    this.isPassword = false,
  });

  @override
  _TextFieldWithStyleState createState() => _TextFieldWithStyleState();
}

class _TextFieldWithStyleState extends State<TextFieldWithStyle> {
  bool _obscureText = true; // Estado para ocultar/mostrar la contraseña

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscureText : false, // Mostrar/ocultar contraseña solo si es un campo de contraseña
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.white), // Cambio de color de los hintText a blanco
        filled: true,
        fillColor: Colors.white24, // Cambio de color de fondo a blanco suave
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        // Agregar el icono del ojo para mostrar/ocultar la contraseña si es un campo de contraseña
        suffixIcon: widget.isPassword
            ? IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: Colors.white,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        )
            : null,
      ),
    );
  }
}
