import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:music_play_app_flutter/pages/deitail/music_detail_page.dart';
import 'package:music_play_app_flutter/pages/deitail/music_detail_viewmodel.dart';
import 'package:provider/provider.dart';
import 'base/di/locator.dart';
import 'generated/l10n.dart';
import 'main_viewmodel.dart';
import 'pages/home_page.dart';

void main() {
  setUpInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MainVM>(create: (_) => MainVM()),
        ChangeNotifierProvider<MusicDetailVM>(create: (_) => MusicDetailVM())
      ],
      child: MaterialApp(
        title: 'MUSIC APP',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale('en'),
        supportedLocales: const [
          Locale('en'), // English
          Locale('es'), // Spanish
        ],
        home: const HomePage(),
      ),
    );
  }
}
