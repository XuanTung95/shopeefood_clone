
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopeefood_clone/routing/app_routing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shopeefood_clone/utils/app_config.dart';

import 'package:window_manager/window_manager.dart';

Future<void> main() async {
  // debugPrintMarkNeedsLayoutStacks = true;
  // debugRepaintTextRainbowEnabled = true;
  // debugPaintLayerBordersEnabled = true;
  // debugRepaintRainbowEnabled = true;
  //debugPaintLayerBordersEnabled = true;

  AppConfig.testConfig = TestConfig.notTesting();

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();
    await windowManager.setSize(const Size(360, 780));
  }

  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
    child: EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('vi')],
        path:
            'assets/translations',
        fallbackLocale: const Locale('en'),
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = AppRouting.getRouter();

  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'ShopeeFood Clone',
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.linux: CupertinoPageTransitionsBuilder(),
            TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
            TargetPlatform.windows: CupertinoPageTransitionsBuilder(),
          },
        ),
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xFFee4d2d),
      ),
    );
  }
}