import 'package:http/http.dart' show Client;
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    final Client client = Client();
    client
        .get("https://us-central1-ccr-hackthon.cloudfunctions.net/helloWorld")
        .then(
          (value) => showDialog(
            context: context,
            child: Dialog(
              child: Text(value.body),
            ),
          ),
        )
        .catchError(
          (onError) => showDialog(
            context: context,
            child: Dialog(
              child: Text(onError.toString()),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
