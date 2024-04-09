import 'package:flutter/material.dart';
import 'package:mobile/providers/animation.provider.dart';
import 'package:mobile/providers/auth.provider.dart.dart';
import 'package:mobile/screens/sign_in_screen.dart';
import 'package:mobile/screens/Welcome_Screen.dart';
import 'package:mobile/screens/signup_screen.dart';
import 'package:mobile/screens/text2sign.screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AnimationProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider())
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter 3d model',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => authProvider.token == ""
            ? const SignInScreen()
            : const WelcomeScreen(),
        '/signup': (BuildContext context) => authProvider.token == ""
            ? const SignUpScreen()
            : const WelcomeScreen(),
        '/': (BuildContext context) => const WelcomeScreen(),
        '/textToSign': (BuildContext context) => const TextToSignScreen(),
      },
    );
  }
}
