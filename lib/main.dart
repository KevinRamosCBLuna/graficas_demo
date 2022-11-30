import 'package:flutter/material.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:graficas_demo/routes/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Graficas Demo',
        //home: const ListView2Screen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
        theme: AppTheme.darkTheme);
  }
}
