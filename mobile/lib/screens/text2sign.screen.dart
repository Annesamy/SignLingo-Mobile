import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:mobile/providers/animation.provider.dart';
import 'package:mobile/providers/auth.provider.dart.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class TextToSignScreen extends StatelessWidget {
  const TextToSignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AnimationProvider animationProvider =
    Provider.of<AnimationProvider>(context);

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,

        body: Stack(
          children: [
            Image.asset(
              'assets/images/bg2.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SlidingUpPanel(
              maxHeight: 200,
              minHeight: 200,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
              panel: Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      TextField(
                        controller: animationProvider.inputController,
                        decoration: const InputDecoration(
                          hintText: 'Enter text',
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            animationProvider.convertToSign();
                            },
                          child: const Text('Convert to sign'))
                    ],
                  ),
                ),
              ),
              body: SafeArea(
                child: Center(
                  child: Flutter3DViewer(
                    controller: animationProvider.controller,
                    src: 'assets/ray.glb',
                  ),
                ),
              ),
            ),
          ]
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            animationProvider.printAnimations();
            },
          backgroundColor: Colors.white70,
          child: const Text("Center"),
        )
    );
  }
}