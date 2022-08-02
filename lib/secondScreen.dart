import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gittest/firstScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final storage = FlutterSecureStorage();

    storage.write(key: "VisitSecondScreen", value: "ture");

    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Second"),
      ),
    );
  }
}
