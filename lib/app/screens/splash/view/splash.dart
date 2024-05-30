import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechinetext/app/controller/Auth/auth_bloc.dart';
import 'package:mechinetext/app/screens/Auth/view/loginpage.dart';

import 'package:mechinetext/app/screens/home/view/home.dart';
import 'package:mechinetext/app/screens/splash/widget/fade.dart';

class SplashPageWrapper extends StatelessWidget {
  const SplashPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc()..add(CheckLoginStatusEvent()),
      child: const SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthenticatedState) {
          Navigator.pushReplacement(context, FadeRoute2(const HomePage()));
        } else if (state is UnAuthenticatedState) {
          Navigator.pushReplacement(context, FadeRoute2(const LoginScreen()));
        }
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset(
              'assets/images/login.jpg',
              height: 250,
              width: 300,
              filterQuality: FilterQuality.high,
            ),
          )),
    );
  }
}
