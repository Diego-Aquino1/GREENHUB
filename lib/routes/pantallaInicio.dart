import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 235,
          ),
          Image.asset(
            'assets/inicio.png',
            width: 250,
            height: 250,
          ),
          Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/first');
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 18),
                  backgroundColor: Color(0xFF41BA66),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                'Empezar',
                style: TextStyle(fontSize: 18),
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
