
import 'package:examwork/screens/loginPage.dart';
import 'package:examwork/screens/registerPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyLogin(),
          routes: {
            'register': (context) => MyRegister(),
            'login': (context) => MyLogin(),
          },
    );
  }
}
