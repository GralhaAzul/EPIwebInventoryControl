import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:EPIwebInventoryControl/screens/base/base_screen.dart';
import 'package:EPIwebInventoryControl/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {
  GetIt.I.registerSingleton(PageStore());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EPIwebInventoryControl',
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.indigo[800],
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.indigo[800]),
          cursorColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: BaseScreen(),
    );
  }
}
