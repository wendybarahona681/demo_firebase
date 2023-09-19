import 'package:flutter/material.dart';

class Ejemplo3 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child:  Column(
        children: [

          Padding(padding: EdgeInsets.all(10),
              child:  Icon(Icons.account_circle_rounded,
                color: Colors.black,
                size: 150,
              )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: double.infinity,
              height: 10,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'digite su emial',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: double.infinity,
              height: 10,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Digitesu contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: double.infinity,
              height: 0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ElevatedButton(
              child: Text(' Sign In '),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 50),
                primary: Colors.white,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                shadowColor: Colors.lightBlue,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('Cannot acces your account?',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }
}