import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class AnimationProvider extends ChangeNotifier {
  String currentAnimation = 'A1';
  Flutter3DController controller = Flutter3DController();
  TextEditingController inputController = TextEditingController();
  bool isLoading = false;

  AnimationProvider() {
    print('AnimationProvider created');
    controller.resetAnimation();
    controller.playAnimation(animationName: 'A1');
  }

  void changeAnimation() {
    notifyListeners();
  }

  Future<void> printAnimations() async {
    List<String> animations = await controller.getAvailableAnimations();
    controller.setCameraTarget(0, 0.5, -1);

    print(animations);
    notifyListeners();
  }

  Future<void> convertToSign() async {
    isLoading = true;
    notifyListeners();
    //take each letter from inputController.text and convert it to uppercase then append to it the number in alphabet
    //example if the input is b or B the output will be B2
    //then play the animation of the letter B2 for one second and repeat the process for each letter

    for (int i = 0; i < inputController.text.length; i++) {
      String letter = inputController.text[i].toUpperCase();
      int letterNumber = letter.codeUnitAt(0) - 64;
      String animationName = letter + letterNumber.toString();
      controller.playAnimation(animationName: animationName);
      await Future.delayed(Duration(seconds: 1), () {});
    }

    //set idle animation
    controller.playAnimation(animationName: 'Armature|0idle');

    isLoading = false;
    notifyListeners();
  }
}
