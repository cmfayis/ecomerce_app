import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechinetext/app/controller/Auth/auth_bloc.dart';
import 'package:mechinetext/app/screens/Auth/view/loginpage.dart';
import 'package:mechinetext/app/screens/home/view/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is SignUpPageState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        }
        if (state is SignupState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage()));
        }
      },
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/signup.png",
              height: 250,
              width: 300,
            ),
            const Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                      ),
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
                            String name = nameController.text;
                            String email = emailController.text;
                            String password = passwordController.text;
                            BlocProvider.of<AuthBloc>(context).add(SignupEvent(
                                name: name, email: email, password: password));
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 159, 201, 234)),
                          child: const Center(
                            child: Text("SignUp"),
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
      ),
    ));
  }
}
