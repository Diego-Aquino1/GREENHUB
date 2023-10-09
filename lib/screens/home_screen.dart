import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF37CB8E),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Center(
              child: Text(
                "Inicio",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "¡HOLA, SOY UNA SEMILLA!",
              style: TextStyle(
                fontSize: 36,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Center(
              child: Image.asset(
                "assets/semilla.png",
                height: 238,
                width: 240,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                "Mi nombre es:",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 50.0,
                  vertical: 0,
                ),
                child: TextField()),
            const Expanded(child: SizedBox()),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/index');
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'SIGUIENTE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: "Poppins",
                    ),
                  )),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 90.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "¿Sabías que con cada desafío soy más grande?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
            const SizedBox(
              height: 30,
            ),
          ],
        )));
  }
}
