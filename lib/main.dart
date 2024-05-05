import 'package:flutter/material.dart';
import 'constants.dart';
import 'index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await readJson();
      await getSettings();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          drawerTheme: DrawerThemeData(
        scrimColor: Colors.white,
      )),
      debugShowCheckedModeBanner: false,
      home: const IndexPage(),
    );
  }
}
