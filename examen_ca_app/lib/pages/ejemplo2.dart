import 'package:flutter/material.dart';

class Ejemplo2 extends StatefulWidget{
  @override
  State<Ejemplo2> createState() => _Ejemplo2State();
}

class _Ejemplo2State extends State<Ejemplo2> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Icon(Icons.person_pin, size: 200,),



            Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'First name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),

            ), Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
                child: TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'last name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                  ),
                ),

            ), Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'User name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),


            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Email Adress',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:40,left: 40, right: 40),
              child: TextField(
                textAlign: TextAlign.left,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Checkbox(value: this.value,
                    onChanged:(value){
                  setState(() {
                    this.value=value!;
                  });
                    },
                ),
                Text("I agree to the terms")
              ],
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
            //     //Color: Colors.orange,
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