import 'package:flutter/material.dart';

class terceraPantalla extends StatelessWidget {
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
              "assets/Slide3.png",
              width: 288,
              height: 399,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reduce tu Huella de Carbono",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF36455A)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Postea diferentes situaciones  de tu día a día. ¡Captura la esencia y comparte experiencias que inspiren a otros!",
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
                  Navigator.pushReplacementNamed(context, '/cuatro');
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
