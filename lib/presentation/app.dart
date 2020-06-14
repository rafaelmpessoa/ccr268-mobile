import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ccr/presentation/router.gr.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, __) => ExtendedNavigator<Router>(
        router: Router(),
      ),
      // initialRoute: Routes.splashPage,
    );
  }
}
