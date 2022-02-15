import 'package:chat_app_application/screens/chat_screen.dart';
import 'package:chat_app_application/screens/login_screen.dart';
import 'package:chat_app_application/screens/registration_screen.dart';
import 'package:chat_app_application/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlashChat());
}

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        )
      ),
      home: const RegistrationScreen(),
    );
  }
}

