import 'package:flutter/material.dart';
import 'package:starbucks_app/src/auth/sign_in_screen.dart';

import 'components/custom_text_field.dart';
import 'components/square_tile.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CustomTextField(
                  controller: usernameController,
                  hintText: 'Username',
                ),
                const SizedBox(height: 10),

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

                CustomTextField(
                  controller: passwordController,
                  hintText: 'Confirm Password',
                  isSecret: true,
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Text(
                        'By clicking the Register button, you agree to the public offer',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.all(25),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Já possui conta?',
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (c) {
                          return SignInScreen();
                        }));
                      },
                      child: const Text('Entrar',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 98, 59, 10),
                            fontWeight: FontWeight.bold,
                          )),
                    )
                  ],
                ),
              ],
            ),
            Positioned(
              top: 10,
              left: 10,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_outlined,
                      color: Colors.grey),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}





/*

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

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
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Create an account',
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              CustomTextField(
                controller: usernameController,
                hintText: 'Username',
              ),
              const SizedBox(height: 10),

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

              CustomTextField(
                controller: passwordController,
                hintText: 'Confirm Password',
                isSecret: true,
              ),

              //forgot password?
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Text(
                      'By clicking the Register button, you agree to the public offer',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.all(25),
                child: SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
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
                      child:
                          Text('OR', style: TextStyle(color: Colors.grey[700])),
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
            ],
          ),
        ));
  }
}

*/
