import 'package:ecommerce_app/core/app_colors/app_colors.dart';
import 'package:ecommerce_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
      pageColor: Colors.white,
      bodyTextStyle: TextStyle(fontSize: 16),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      imagePadding: EdgeInsets.all(8.0),
      titlePadding: EdgeInsets.all(6),
    );
    return IntroductionScreen(
      bodyPadding: EdgeInsets.symmetric(vertical: 50),
      // onSkip: () {},
      showDoneButton: true,
      showNextButton: true,
      next: Text(
        'next',
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      nextStyle: TextButton.styleFrom(overlayColor: AppColors.primaryColor),
      onDone: () {},
      done: Text(
        'done',
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      showBackButton: true,
      // showSkipButton: true,
      // skip: Text(
      //   'skip',
      //   style: TextStyle(
      //     color: AppColors.primaryColor,
      //     fontWeight: FontWeight.w600,
      //   ),
      // ),
      back: Text(
        'back',
        style: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),

      backStyle: TextButton.styleFrom(overlayColor: AppColors.primaryColor),
      dotsDecorator: DotsDecorator(
        activeColor: AppColors.primaryColor,
        size: Size.square(8),
        activeSize: Size(18, 9),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        spacing: EdgeInsets.symmetric(horizontal: 6),
      ),
      key: _introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Find Anything',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
          decoration: pageDecoration,
          image: Image.asset('asset/svgs/undraw1.png'),
        ),
        PageViewModel(
          title: 'Big Discounts',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
          decoration: pageDecoration,
          image: Image.asset('asset/svgs/undraw2.png'),
        ),
        PageViewModel(
          title: 'Delivery Free',
          body:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
          decoration: pageDecoration,
          image: Image.asset('asset/svgs/undraw3.png'),
          footer: Column(
            children: [
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
                child: Text('Let\'s start'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
