import 'package:flutter/material.dart';
import 'package:starbucks_app/src/auth/sign_up_screen.dart';
import 'package:starbucks_app/src/base/base_screen.dart';

import 'components/custom_text_field.dart';
import 'components/square_tile.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: Center(
            child: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),

                const Image(
                  image: AssetImage(
                    "assets/images/starbuckslogo.png",
                  ),
                  width: 210,
                  height: 210,
                ),

                const SizedBox(
                  height: 5,
                ),

                //welcome back, you've been missed!
                Center(
                  child: Text(
                    'Welcome back you been missed!',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //username textfield
                CustomTextField(
                  controller: usernameController,
                  hintText: 'Email',
                ),
                const SizedBox(height: 10),

                //password textfield
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  isSecret: true,
                ),

                const SizedBox(height: 10),

                //forgot password?
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color.fromRGBO(0, 98, 59, 10),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                //sign in button
                /*  SignInButton(
                  onTap: signUserIn,
                ),
                */
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacement(MaterialPageRoute(builder: (c) {
                        return const BaseScreen();
                      }));
                    },
                    child: const Text('Entrar',
                        style: TextStyle(
                          fontSize: 18,
                        )),
                  ),
                ),

                const SizedBox(height: 30),

                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('OR',
                            style: TextStyle(color: Colors.grey[700])),
                      ),
                      Expanded(
                        child: Divider(thickness: 0.5, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                //google + apple sign in buttons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'assets/images/google.png'),
                    SizedBox(width: 20),

                    // apple button
                    SquareTile(imagePath: 'assets/images/apple.png'),
                  ],
                ),

                const SizedBox(height: 10),

                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (c) {
                          return SignUpScreen();
                        }));
                      },
                      child: const Text('Sign Up',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 98, 59, 10),
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
