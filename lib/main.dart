import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shopeefood_clone/screens/home/home_screen.dart';
import 'package:shopeefood_clone/screens/home/local/location/finding_location.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopeefood_clone/screens/splash/screen_splash.dart';
import 'package:shopeefood_clone/theme/app_text_style.dart';
import 'package:shopeefood_clone/utils/money_utls.dart';
import 'package:shopeefood_clone/widgets/bubble/notify_bubble.dart';
import 'package:shopeefood_clone/widgets/scroll_behavior/macos_scroll_behavior.dart';


void main() async {
  // debugPrintMarkNeedsLayoutStacks = true;
  // debugRepaintTextRainbowEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  // debugRepaintRainbowEnabled = true;

  //debugPaintLayerBordersEnabled = true;

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
    child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('vi')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('en'),
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFFee4d2d),
      ),
    );
  }

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const ScreenSplash(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const ScreenHome(),
      ),
    ],
  );
}