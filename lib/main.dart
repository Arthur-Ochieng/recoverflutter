import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:kkservices/screens/authentication/login_screen.dart';
import 'package:kkservices/screens/feedback/feedbackUI.dart';
import 'package:kkservices/screens/home_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey =
      'pk_test_51KmdOnEkIt0KjvdDcppaxALCRDXn8erKbymHoN7Xe2mkimCVGcdnGolJp6ZNHcP3o2w6dsczr5UYFj88MsugTF8L00HK44vga6';
  Stripe.instance.applySettings();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'ubuntu',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
