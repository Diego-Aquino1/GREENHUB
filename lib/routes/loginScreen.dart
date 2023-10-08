import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "¡Hola!",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF36455A)),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Conéctate con tu entorno hoy.",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF495566)),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Nombre del usuario",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF6A6F7D)),
                    ),
                    TextField(),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "Contraseña",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFF6A6F7D)),
                    ),
                    TextField(
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Remember Me",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6A6F7D)),
                        ),
                        Expanded(child: Expanded(child: SizedBox())),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF6A6F7D)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/inicio');
                  },
                  style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                      backgroundColor: Color(0xFF2DDA93),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(fontFamily: 'Actor', fontSize: 15),
                  )),
              const SizedBox(
                height: 25,
              )
            ],
          )),
    );
  }
}