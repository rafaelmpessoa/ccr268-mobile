import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFFFF373F),
      child: Center(
        child: Image.asset(
          'assets/images/logotipo.png',
          height: 255,
        ),
      ),
    );
  }
}
