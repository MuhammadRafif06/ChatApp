import 'package:chat_app_application/screens/login_screen.dart';
import 'package:chat_app_application/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WELCOME_SCREEN';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 60.0,
                  child: Image.asset('images/logo.png'),
                ),
                Text('Chat App', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w900, color: Colors.black),)
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, LoginScreen.id);
                    // to login screen
                  },
                  minWidth: 200,
                  height: 42,
                  child: Text('Log in', style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(32.0),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.pushNamed(context, RegistrationScreen.id);

                  },
                  minWidth: 200,
                  height: 42,
                  child: Text('Register', style: TextStyle(color: Colors.white),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
