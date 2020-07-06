import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
//!for text animation the above import is used

import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  //if static is used we dont have to use brackets in the main file
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  //enables welcome screen state as a ticker provider

  AnimationController controller;
  //curver animation
  Animation animation;
  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation =
        ColorTween(begin: Colors.blue, end: Colors.white).animate(controller);
    // animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    // controller.forward();

    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });

    controller.forward();
    controller.addListener(() {
      setState(() {}); //for animation to work set state is used
      // print(animation.value);
    });
  }

//dismissing the animation controller because it uses resources
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          animation.value, //changes the background color from red to blue
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height:
                        60.0, //flash chat animation from left to right linearly
                    //multiply by 100 to exaggerate the effect
                  ),
                ),
                TypewriterAnimatedTextKit(
                  speed: Duration(
                      milliseconds: 1000), //* how fast the text will animate
                  text: ['Flash Chat'],
                  // '${controller.value.toInt()}%', //0-100 animation
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            new RoundedButton(
              title: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              colour: Colors.lightBlueAccent,
            ),
            new RoundedButton(
              title: 'Register',
              colour: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
