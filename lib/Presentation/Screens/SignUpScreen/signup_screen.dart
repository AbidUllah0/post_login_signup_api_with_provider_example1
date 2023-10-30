import 'package:flutter/material.dart';
import 'package:post_login_signup_api_with_provider/Domain/SignUp_Provider/signup_provider.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SignUpProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Login SignUp Api'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  controller: provider.emailController,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: provider.passwordController,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {
                      provider.Login(
                        provider.emailController.text.toString(),
                        provider.passwordController.text.toString(),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
