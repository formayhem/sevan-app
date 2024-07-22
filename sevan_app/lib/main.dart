import 'package:app/pages/home_page.dart';
import 'package:app/pages/mchezo_detail_page.dart';
import 'package:app/pages/mchezo_detail_pagee.dart';
import 'package:app/pages/mchezo_detail_pageee.dart';
import 'package:app/pages/mchezo_page.dart';
import 'package:app/pages/payment_page.dart';
import 'package:app/pages/profile_page.dart';
import 'package:app/pages/settings_page.dart';
import 'package:app/pages/history_page.dart';
import 'package:app/pages/welcome_page.dart';
import 'package:app/providers/mchezo.dart';
import 'package:app/providers/mchezo_provider.dart';
import 'package:app/providers/participant_contribution_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'pages/Login_page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});
  final mchezo = Mchezo(
    id: '',
    name: '',
    participants: 10,
    contributions: 11100,
    days: 10,
    imageUrl: '',
  );

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MchezoProvider()),
        ChangeNotifierProvider.value(
            value:
                ParticipantContributionProvider()), // Add ParticipantContributionProvider here
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const WelcomePage(),
        routes: {
          LoginPage.routeName: (ctx) => const LoginPage(),
          HomePage.routeName: (ctx) => const HomePage(),
          MchezoDetailPage.routeName: (ctx) => const MchezoDetailPage(),
          MchezoPage.routeName: (ctx) =>  MchezoPage(),
          ProfilePage.routeName: (ctx) => const ProfilePage(),
          SettingsPage.routeName: (ctx) => const SettingsPage(),
          HistoryPage.routeName: (ctx) => const HistoryPage(),
          PaymentPage.routeName: (ctx) => PaymentPage(),
          MchezoDetailPagee.routeName: (ctx) => MchezoDetailPagee(mchezo),
          MchezoDetailPageee.routeName: (ctx) => MchezoDetailPageee(mchezo)
        },
      ),
    );
  }
}
