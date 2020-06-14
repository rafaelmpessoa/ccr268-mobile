import 'package:ccr/constants.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Widget bottomNavigationBar;

  const BaseScaffold({this.body, this.bottomNavigationBar});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(child: body),
        color: kBrandColor,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
