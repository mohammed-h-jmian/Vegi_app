import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:sign_button/constants.dart';

// ignore: camel_case_types
class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 450,
              width: double.infinity,
              child: Column(children: [
                const Text(
                  'Sign in to contunue',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Vegi',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 20
                          ..color = const Color.fromARGB(255, 0, 124, 17),
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Vegi',
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                Column(
                  children: [
                    SignInButton(
                      Buttons.Apple,
                      text: "Sign in with Apple",
                      onPressed: () {},
                    ),
                    SignInButton(
                      Buttons.Google,
                      text: "Sign in with Google",
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      'By signing in you are agreeing to our',
                      style: TextStyle(
                        color: Color.fromARGB(255, 141, 141, 141),
                        fontSize: 16,
                      ),
                    ),
                    const Text.rich(
                      TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 141, 141, 141),
                        ),
                        // default text style
                        children: <TextSpan>[
                          TextSpan(
                            text: ' and ',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                              text: 'Pricacy Policy',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
