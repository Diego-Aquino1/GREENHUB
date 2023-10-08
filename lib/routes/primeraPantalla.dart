import 'package:flutter/material.dart';

class primeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context){
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Monitorea tu aire, ¡respira!",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF36455A)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tendrás una perspectiva ambiental del entorno donde vives.",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A6F7D)),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/dos');
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                    backgroundColor: Color(0xFF2DDA93),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text(
                  'SIGUIENTE',
                  style: TextStyle(fontSize: 15),
                )),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

