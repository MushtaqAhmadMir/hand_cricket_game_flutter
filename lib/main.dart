import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hand_cricket/common/di/injection.dart';
import 'package:hand_cricket/presentation/screens/my_app/my_app.dart';

void main() async {
  initComponents();
  runApp(const MyApp());
}

Future<void> initComponents() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencyInjection();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
