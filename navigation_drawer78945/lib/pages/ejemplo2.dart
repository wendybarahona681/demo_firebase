import 'package:flutter/material.dart';

class Ejemplo2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.contact_mail, size: 90,),
            const Text('REGISTER',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black87,

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Your name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),

            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Email Adress',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:30,left: 40, right: 40,bottom: 10),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: '...........',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Register',
                    style: TextStyle(
                      fontSize: 28,

                    ),
                  ), // <-- Text
                  SizedBox(
                    width: 3,

                  ),
                ],
              ),
            ),
            // SizedBox(
            //   width: double.maxFinite,
            //   child: ElevatedButton.icon(
            //     //Color: Colors.lightBlueAccent,
            //     onPressed: (){
            //       print('Diste Click');
            //     },
            //     label: Text("SEND",style: TextStyle(
            //       fontSize: 30,
            //       color: Colors.white,
            //     ),
            //     ),
            //     style: ElevatedButton.styleFrom(
            //         primary: Colors.indigo //elevated btton background color
            //     ),
            //     icon: Icon(Icons.arrow_forward),  //icon data for elevated button
            //   ),
            // )
          ],
        ),
      ),
    );
  }

}