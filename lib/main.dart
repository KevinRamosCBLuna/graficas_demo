import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graficas_demo/internationalization/internationalization.dart';
import 'package:graficas_demo/providers/QR/qr_provider.dart';
import 'package:graficas_demo/providers/pdf_demo/pdf_client_provider.dart';
import 'package:graficas_demo/providers/pdf_demo/pdf_list_provider.dart';
import 'package:graficas_demo/providers/uwifi_provider.dart';
import 'package:graficas_demo/providers/week_provider.dart';
import 'package:graficas_demo/providers/pdf_demo/pdf_provider.dart';
import 'package:graficas_demo/routes/app_routes.dart';
import 'package:graficas_demo/theme/app_theme.dart';
import 'package:graficas_demo/widgets/horizontalscroll.dart';
import 'package:provider/provider.dart';
import 'package:async/async.dart';
import 'package:appwrite/appwrite.dart' as db;

void main() {
  // Configura el cliente de Appwrite
  db.Client appwriteClient =db.Client()
      .setEndpoint('https://appwrite.cbluna-dev.com') // Endpoint de tu servidor Appwrite en la nube
      .setProject('66833bc30013ba6896ca'); // ID de tu proyecto en Appwrite
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SendWeek(),
        ),
        ChangeNotifierProvider(
          create: (context) => PDFProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PDFListProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PDFClientProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => UwifiProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => QRProvider(appwriteClient),
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
  // ignore: library_private_types_in_public_api
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
      title: 'Test',
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
      scrollBehavior: MyCustomScrollBehavior(),
      theme: AppTheme.lightTheme,
    );
  }
}
