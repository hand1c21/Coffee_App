import 'package:coffee_new_app/pages/coffee_manager.dart';
import 'package:coffee_new_app/pages/home_page.dart';
import 'package:coffee_new_app/pages/shop_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_app_check/firebase_app_check.dart';
import 'pages/login_page.dart';
import 'model/coffee_shop.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// void main() async { WidgetsFlutterBinding.ensureInitialized(); await Firebase.initializeApp();
// await FirebaseAppCheck.instance.activate(
// androidProvider: AndroidProvider.playIntegrity
// ); runApp(MyApp()); }



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
