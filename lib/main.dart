import 'package:flutter/material.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:graficas_demo/routes/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SendWeek(),
        ),
       
      ],
      child: const MyApp(),
    ),
  );
} 

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
