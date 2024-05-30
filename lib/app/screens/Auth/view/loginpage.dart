import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechinetext/app/controller/Auth/auth_bloc.dart';
import 'package:mechinetext/app/screens/Auth/view/signpage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignUpPageState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignupScreen()));
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/images/login.jpg",
            height: 250,
            width: 300,
          ),
          const Text(
            "Welcome Back!",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          BlocProvider.of<AuthBloc>(context)
                              .add(SignUpPageEvent());
                        },
                        child: const Text(
                          "If you don't have an account?, sign up",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          String email = emailController.text;
                          String password = passwordController.text;
                          BlocProvider.of<AuthBloc>(context).add(
                              LoginEvent(email: email, password: password));
                        }
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Center(
                          child: Text("Login"),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
