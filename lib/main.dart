import 'package:campusnet/Authentication/UI/pages/Homepage.dart';
import 'package:campusnet/Authentication/UI/pages/LoginPage.dart';
import 'package:campusnet/navigation.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  
   await Supabase.initialize(
    url: 'https://jouwsalxgeleizhjzujq.supabase.co',
    anonKey: 'sb_publishable_YH-z4QiLr9jKwUOSDt8OCQ_h_OPqmCX',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      initialRoute: '/login',
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Loginpage(),
       routes: {
        '/login': (_) => const Loginpage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}


