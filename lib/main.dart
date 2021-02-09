import 'package:sadaka_garya/Screen/splash_screen.dart';
import 'package:sadaka_garya/provider/fontsize.dart';
import 'package:sadaka_garya/provider/settings_provider.dart';
import 'package:sadaka_garya/provider/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeNotifier>(
            create: (_) => ThemeNotifier(ThemeData.dark())),
        ChangeNotifierProvider<FontSizeNotifier>(
            create: (_) => FontSizeNotifier()),
        ChangeNotifierProvider<UserSettingsNotifier>(
            create: (_) => UserSettingsNotifier())
      ],
      child: MaterialAppWithProvider(),
    );
  }
}

class MaterialAppWithProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'حصن المسلم',
      theme: theme.getTheme(),
      home: MysplashScreen(),
    );
  }
}
