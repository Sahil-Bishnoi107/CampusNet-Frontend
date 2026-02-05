import 'dart:async';
import 'dart:convert';

import 'package:campusnet/navigation.dart';
import 'package:campusnet/Authentication/Domain/interfaces/AuthRepo.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Authrepo implements IAuthRepo {

  static const _tokenKey = 'auth_token';
  Authrepo._();
  static final Authrepo instance = Authrepo._();
  factory Authrepo() => instance;

  StreamSubscription? _sub;

  void initAuthListener(BuildContext context) {
    _sub ??= Supabase.instance.client.auth
        .onAuthStateChange
        .listen((data) async {
      final session = data.session;

      if (session != null) {
        await handleSupabaseLogin();
      }
    });
  }

  @override
  Future<void> signInWithGoogle() async {
    await Supabase.instance.client.auth.signInWithOAuth(
      OAuthProvider.google,
      redirectTo: 'myapp://login-callback',
    );
    print("endpoint for social login hit");
  }

  @override
  Future<void> handleSupabaseLogin() async {
    final session = Supabase.instance.client.auth.currentSession;
    if (session == null) return;

    final supabaseJwt = session.accessToken;
    print('Supabase JWT: ${supabaseJwt.substring(0, 30)}...');

    final res = await http.post(
      Uri.parse('http://localhost:5044/campus-net/auth/social-login'),
      headers: {
        'Authorization': 'Bearer $supabaseJwt',
      },
    );
    if(res.statusCode != 200){print("Failed with exception ${res.statusCode}");}
    if (res.statusCode == 200) {
      final backendJwt = jsonDecode(res.body)['token'];
      print(backendJwt);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_tokenKey, backendJwt);

      navigatorKey.currentState!
          .pushReplacementNamed('/home');
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_tokenKey);
  }


  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
    await Supabase.instance.client.auth.signOut();

    navigatorKey.currentState!
        .pushReplacementNamed('/login');
  }
}
