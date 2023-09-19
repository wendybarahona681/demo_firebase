import 'package:flutter/material.dart';




class ejemplo2 extends StatefulWidget {
  @override
  State<ejemplo2> createState() => _ejemplo2State();
}
class _ejemplo2State extends State<ejemplo2>{
  TextEditingController capital = TextEditingController();

  TextEditingController meses = TextEditingController();

  String mensaje2 = '';
  double suma = 0.0;
  double capital2 = 0.0;
  double meses2 = 0.0;
  double _result2 = 0.0;

  void calcular(){
    setState(() {
      suma = meses2 * .02;
      capital2 = double.parse(capital.text.toString());
      meses2 = double.parse(meses.text.toString());

      _result2 = capital2 + suma;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(

        child: Column( mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text('CALCULADOR',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('images/perfil.png',
                height: 150,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextField(
                controller: capital,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                  labelText: 'Capital a invertir',
                  hintText: 'Escribe el capital invertido',
                  errorText: capital.text.toString() =="" ? mensaje2 : null,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextField(
                controller: meses,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100))),
                  labelText: 'Meses de ahorro',
                  hintText: 'Digite el nùmero de meses invertidos',
                  errorText: meses.text.toString() =="" ? mensaje2 : null,
                ),
              ),
            ),
            Text('${_result2.toStringAsFixed(1)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.green,
                )
            ),
            ElevatedButton(
              child: Text('Calcular'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                // side: BorderSide(color: Colors.yellow, width: 5),
                textStyle: const TextStyle(
                    color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                shadowColor: Colors.lightBlue,
              ),
              onPressed: () {calcular();},

            ),
          ],
        ),
      ),
    );
  }

}


