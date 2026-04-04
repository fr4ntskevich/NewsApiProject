import 'package:flutter/material.dart';
import 'package:news_api_project/app/app.dart';
import 'package:news_api_project/core/di/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const App());
}
