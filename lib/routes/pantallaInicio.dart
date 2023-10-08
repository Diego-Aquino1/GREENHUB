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
            width: 290,
            height: 230,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/uno');
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 17),
                  backgroundColor: Color(0xFF41BA66),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(99))),
              child: const Text(
                'Empezar',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
