
import 'package:app/pages/home_page.dart';
import 'package:app/pages/welcome_page.dart';
import 'package:app/providers/mchezo_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'pages/Login_page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider.value(
      value: MchezoProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
    
        routes: {
          LoginPage.routeName : (ctx) => const LoginPage(),
          HomePage.routeName: (ctx) => const HomePage(),
        },
      ),
    );
  }
}
