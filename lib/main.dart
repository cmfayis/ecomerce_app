import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mechinetext/app/controller/Auth/auth_bloc.dart';
import 'package:mechinetext/app/controller/Home/home_bloc.dart';
import 'package:mechinetext/app/screens/splash/view/splash.dart';
import 'package:mechinetext/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
     BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Plus Jakarta Sans',
          useMaterial3: true,
        ),
        home: const SplashPageWrapper(),
      ),
    );
  }
}
