import 'package:flutter/material.dart';
import 'package:greenhub/routes/loginScreen.dart';

import 'package:greenhub/screens/home_screen.dart';
import 'package:greenhub/screens/community_screen.dart';
import 'package:greenhub/screens/location_screen.dart';

import 'package:greenhub/routes/pantallaInicio.dart';
import 'package:greenhub/routes/primeraPantalla.dart';
import 'package:greenhub/routes/segundaPantalla.dart';
import 'package:greenhub/routes/terceraPantalla.dart';
import 'package:greenhub/routes/cuartaPantalla.dart';

void main() {
  runApp(GREENHUB());
}

class GREENHUB extends StatelessWidget {
  const GREENHUB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GREENHUB",
      initialRoute: '/index',
      routes: {
        '/index': (context) => PantallaInicio(),
        '/uno': (context) => primeraPantalla(),
        '/dos': (context) => segundaPantalla(),
        '/tres': (context) => terceraPantalla(),
        '/cuatro': (context) => cuartaPantalla(),
        '/login': (context) => loginScreen(),
        '/inicio': (context) => Inicio(),
        '/community': (context) => CommunityWidget(),
        '/location': (context) => LocationWidget(),
      },
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    LocationWidget(),
    CommunityWidget(),
  ];

  void _onItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(
              _selectedIndex), //Muestra la pantalla del wigget seleccionado
        ),
        bottomNavigationBar: Container(
          height: 70,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Inicio',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on),
                label: 'Localidad',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Comunidad',
              ),
            ],
            showSelectedLabels: false, // Oculta las etiquetas de texto
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xFF2DDA93),
            unselectedItemColor: Colors.grey,
            onTap: _onItem,
          ),
        ));
  }
}
