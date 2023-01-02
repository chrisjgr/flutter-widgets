import 'package:flutter/material.dart';

import 'package:app_components/themes/app_theme.dart';
import 'package:app_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: AppRoutes.getAppRoutes(),
      initialRoute: AppRoutes.initialRoute,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
     // home: const Listview2Screen(),
    );
  }
}
