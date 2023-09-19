import 'package:flutter/material.dart';
import 'package:menu_negativo_draguer/pages/inicio.dart';
import 'package:menu_negativo_draguer/pages/pages1.dart';
import 'package:menu_negativo_draguer/pages/pages2.dart';
import 'package:menu_negativo_draguer/pages/pages3.dart';


class MyHomePages extends StatefulWidget{
  @override
  State<MyHomePages> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePageState> {

  int _item = 0;

  getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return inicio();
      case 1: return pages1();
      case 2: return pages2();
      case 3: return pages3();
  }

  }

  void _setItemDrawer(int position) {
    Navigator.pop(context);
    setState(() {
      _item = position;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(

          title: Text('Menu')

      ),


      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text(
                'Yordi HD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              selected: (0 ==_item),
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: (){

                _setItemDrawer(0);

              },

            ),

            Divider(color: Colors.blue,),


            ListTile(
              selected: (1 ==_item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('pagina1'),
              onTap: (){
                _setItemDrawer(1);
              },
            ),
            ListTile(
              selected: (2 ==_item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Pagina2'),
              onTap: (){
                _setItemDrawer(2);
              },
            ),

            ListTile(
              selected: (3 ==_item),
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Pagina3'),
              onTap: (){
                _setItemDrawer(3);
              },
            ),
          ],
        ),
      ),

      body: getDrawerItemWidget(_item),


    );
  }





