import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/app/pages/auth/sign_in_page.dart';
import 'package:flash_chat/app/pages/auth/sign_up_page.dart';
import 'package:flash_chat/components/registerwidget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Flash Chat',
                  textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
              isRepeatingAnimation: true,
            ),
            const SizedBox(
              height: 40,
            ),
            RegisterWidget(
              title: 'Sign In',
              onTap: () {
                //context.go('/sign_in_page');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RegisterWidget(
              title: 'Sign Up',
              containerColor: const Color(0xff2571B6),
              onTap: () {
                //context.go('/sign_up_page');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
