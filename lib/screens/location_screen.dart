import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/index');
          },
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 16),
              backgroundColor: Color(0xFF2DDA93),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: const Text(
            'SALIR',
            style: TextStyle(fontSize: 18),
          )),
    );
  }
}
