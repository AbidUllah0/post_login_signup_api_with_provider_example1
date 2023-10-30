import 'package:flutter/material.dart';
import 'package:post_login_signup_api_with_provider/Domain/SignUp_Provider/signup_provider.dart';
import 'package:provider/provider.dart';

import 'Presentation/Screens/SignUpScreen/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SignUpProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SignUpScreen(),
      ),
    );
  }
}
