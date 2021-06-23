import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6969FF),
      body: Container(
        // width: 410.0,
        transform: Matrix4.translationValues(0, 230, 1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 33.0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: Color(0xFF1F1F4C),
                    fontSize: 40.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                  'A one place destination where you implement investments while you learn!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF6969FF),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
