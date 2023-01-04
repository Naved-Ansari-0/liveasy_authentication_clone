import 'package:flutter/material.dart';
import 'package:liveasy_clone/pages/4.dart';


void main() => runApp(MaterialApp(
  home: WelcomeScreen(),
));

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {

  String user_type = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "WELCOME \n ${ProfileTypeScreenState.show_user_type}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

}