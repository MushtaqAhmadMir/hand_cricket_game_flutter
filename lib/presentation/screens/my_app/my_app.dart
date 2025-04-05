import 'package:flutter/material.dart';
import 'package:hand_cricket/presentation/screens/game_screen/game_screen.dart';
import 'package:hand_cricket/presentation/screens/how_to_play/how_to_play_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      home: Scaffold(body: HowToPlayScreen()),
    );
  }
}
