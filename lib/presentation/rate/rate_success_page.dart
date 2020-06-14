import 'package:auto_route/auto_route.dart';
import 'package:ccr/constants.dart';
import 'package:ccr/presentation/widgets/base_scaffold.dart';
import 'package:flutter/material.dart';

class RateSuccessPage extends StatelessWidget {
  final double points;

  const RateSuccessPage({Key key, @required this.points}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 64,
            ),
            Icon(
              Icons.check_circle,
              color: Color(0xFF509477),
              size: 145,
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Obrigado por ajudar mais de 5000 caminhoneiros",
              style: TextStyle(
                fontSize: 24,
                color: kBackgroudColor02,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 64,
            ),
            Text(
              "${points.toInt()} Pontos",
              style: TextStyle(color: kBackgroudColor02, fontSize: 24),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 50,
              width: 215,
              child: RaisedButton(
                color: kBrandColor,
                onPressed: () => ExtendedNavigator.of(context).pop(),
                child: Center(
                  child: Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
