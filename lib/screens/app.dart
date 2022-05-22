import 'package:flutter/material.dart';
import 'package:social_auth/screens/login/login.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Login()
    );
  }
}