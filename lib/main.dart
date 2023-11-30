import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graficas_demo/internationalization/internationalization.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/providers/pdf_provider.dart';
import 'package:graficas_demo/theme/App_theme.dart';
import 'package:graficas_demo/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:async/async.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SendWeek(),
        ),
        ChangeNotifierProvider(
          create: (context) => PDFProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  static _MyAppState of(BuildContext context) => context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('es');

  void setLocale(Locale value) => setState(() => _locale = value);

  late RestartableTimer timer;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Graficas Demo',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        debugShowMaterialGrid: false,
        locale: _locale,
        onGenerateRoute: AppRoutes.onGenerateRoute,
        localizationsDelegates: const [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en', 'US')],
        theme: AppTheme.darkTheme);
  }
}
