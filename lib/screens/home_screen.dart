import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF2DDA93),
        body: Center(
            child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Expanded(child: SizedBox()),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/dos');
                },
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 16),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: const Text(
                  'SIGUIENTE',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )),
            SizedBox(
              height: 20,
            )
          ],
        )));
  }
}
