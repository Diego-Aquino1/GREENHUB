import 'package:flutter/material.dart';

class primeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/Slide1.png",
              width: 288,
              height: 399,
            ),
            const Column(
              children: [
                Text("Monitorea tu aire, ¡respira!"),
                SizedBox(
                  height: 30,
                ),
                Text(
                    "Tendrás una perspectiva ambiental del entorno donde vives.")
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/index');
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 18),
                    backgroundColor: Color(0xFF41BA66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99))),
                child: const Text(
                  'SIGUIENTE',
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
