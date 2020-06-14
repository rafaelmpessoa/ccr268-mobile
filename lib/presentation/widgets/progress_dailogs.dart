import 'package:flutter/material.dart';

class ProgressDailogs {
  static void loadingDialog(BuildContext context, [String msg]) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(),
              SizedBox(
                height: 40,
              ),
              Text(msg ?? "Loading..."),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      },
    );
  }

  static void errorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 20),
                Icon(
                  Icons.error,
                  size: 64,
                  color: Color(0xFFF25F3A),
                ),
                SizedBox(height: 40),
                Flexible(child: Text(error)),
                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}
