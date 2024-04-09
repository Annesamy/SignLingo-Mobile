import 'package:flutter/material.dart';
import 'package:mobile/components/welcome_button.dart';
import 'package:mobile/providers/auth.provider.dart.dart';
import 'package:mobile/screens/text2sign.screen.dart';
import 'package:mobile/screens/camera_screen.dart';
import 'package:mobile/widgets/custom_scaffold.dart';
import 'package:provider/provider.dart';
import 'package:mobile/screens/learning_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    return CustomScaffold(
      child: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Flexible(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 25.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: 'Welcome to SignLingo!\n',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500),
                    ),
                    TextSpan(
                      text:
                          '\nSignLingo is a platform that helps you learn sign language',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),

          Flexible(
              child: authProvider.token != ""
                  ? Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const TextToSignScreen(),
                                ),
                              );
                              },
                            child: const Text("Text to Sign"))
                      ],
                    )
                  : Container()),

          Flexible(
              child: authProvider.token != ""
                  ? Column(
                      children: [
                        const Text("services"),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const Camera(),
                                ),
                              );
                              },
                            child: const Text("Sign to Text"))
                        ],
                  )
                  : Container()),

          Flexible(
              child: authProvider.token != ""
                  ? Column(
                      children: [
                        const Text("services"),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (e) => const Learn(),
                                ),
                              );
                              },
                            child: const Text("Learn ASL"))
                        ],
                  )
                  : Container()),

          Flexible(
              flex: 1,
              child: authProvider.token == ""
                  ? const Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        children: [
                          Expanded(
                            child: WelcomeButton(
                              buttonText: 'Sign in',
                              onTap: '/login',
                              color: Colors.transparent,
                              textColor: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: WelcomeButton(
                              buttonText: 'Sign up',
                              onTap: '/signup',
                              color: Colors.white,
                              textColor: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        authProvider.logout();
                      },
                      child: const Text('Logout'))
          ),
        ],
      ),
    );
  }
}
