import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/Home/peresintaion/view/home_view.dart';
import 'package:bookly/features/splash/animated_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initalizeAnimation();
    navToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //child will take max width
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          width: 200,
        ),
        SizedBox(
          height: 5,
        ),
        AnimatedText(animation: animation)
      ],
    );
  }

  void navToHome() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => HomeView(),
          transition: Transition.fade, duration: kTranstionDuration);
    });
  }

  void initalizeAnimation() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<Offset>(begin: Offset(0, 2), end: Offset(0, 0))
        .animate(animationController);

    animationController.forward();
  }
}
