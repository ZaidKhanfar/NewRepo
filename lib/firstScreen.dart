import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gittest/secondScreen.dart';
import 'package:gittest/thirdScreen.dart';

bool VisitSecondScreen = false;

class firstScreen extends StatelessWidget {
  firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
              onPressed: () async {
                final storage = FlutterSecureStorage();
                final value = await storage.read(key: "VisitSecondScreen");

                if (value == null || value == "second") {
                  await storage.write(key: "VisitSecondScreen", value: "third");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SecondScreen())));
                } else {
                  await storage.write(
                      key: "VisitSecondScreen", value: "second");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => ThirdScreen())));
                }
              },
              child: const Text("Go to the next screen!!")),
        ),
      ),
    );
  }
}
