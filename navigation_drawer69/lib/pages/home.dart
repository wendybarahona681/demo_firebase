import 'package:flutter/material.dart';
import 'package:navigation_drawer69/pages/Ejemplo1.dart';
import 'package:navigation_drawer69/pages/Ejemplo2.dart';
import 'package:navigation_drawer69/pages/Ejemplo3.dart';
import 'package:navigation_drawer69/pages/inicio.dart';

class home extends StatefulWidget{
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _itemDrawer = 0;

    _getDrawerItem(int position){
    switch(position){
      case 0: return Inicio();
      case 1: return Ejemplo1();
      case 2: return Ejemplo2();
      case 3: return Ejemplo3();

  }
  }
void _onSelectItemDrawer( int pos){
  Navigator.pop(context);
   setState(() {
     _itemDrawer = pos;
   });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer',),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
              ),
              child: Text(
                'ITCA FEPADE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),
               onTap: (){
    _onSelectItemDrawer(0);

    },
            ),
    Divider(
    color: Colors.black
    ), ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo1'),
                onTap: (){
                  _onSelectItemDrawer(1);

                }
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo2'),
                onTap: (){
                  _onSelectItemDrawer(2);

                }
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo3'),
                onTap: (){
                  _onSelectItemDrawer(3);

                }
            ),
            Divider(
                color: Colors.black
            ),
          ],
        ),
      ),

      body: _getDrawerItem(_itemDrawer),
    );
  }
}