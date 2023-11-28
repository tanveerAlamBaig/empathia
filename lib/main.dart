import 'package:empathia/pages/create_acc.dart';
import 'package:empathia/pages/create_acc_as.dart';
import 'package:empathia/pages/sign_in_as.dart';
import 'package:empathia/patient/create_account_patient.dart';
import 'package:empathia/patient/forgot_passd_pat_2.dart';
import 'package:empathia/patient/forgot_passwd_pat.dart';
import 'package:empathia/patient/home_patient.dart';
import 'package:empathia/patient/signin_as_patient.dart';
import 'package:empathia/psychologist/create_account_psych.dart';
import 'package:empathia/psychologist/forgot-passwd_psych.dart';
import 'package:empathia/psychologist/forgot_passwd_psych2.dart';
import 'package:empathia/psychologist/home_psych.dart';
import 'package:empathia/psychologist/signin_as_psych.dart';
import 'package:flutter/material.dart';
import 'pages/on_boarding.dart';
import 'patient/forgot_passwd_pat_3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/createAcc': (context) => const CreateAccount(),
        '/createAccAs': (context) => const CreateAccAs(),
        '/signInAs': (context) => const SignInAs(),
        '/createAccAsPsych': (context) => const CreateAccountPsych(),
        '/createAccAsPatient': (context) => const CreateAccountPatient(),
        '/signInAsPatient': (context) => const SignInAsPatient(),
        '/signInAsPsych': (context) => const SignInAsPsych(),
        '/homePatient': (context) => const HomePatient(),
        '/homePsych': (context) => const HomePsych(),
        '/forgotPasswdPatient': (context) => const ForgotPasswordPatient(),
        '/forgotPasswdPatient2': (context) => const ForgotPasswdPatient2(),
        '/forgotPasswdPatient3': (context) => const ForgotPasswdPatient3(),
        '/forgotPasswdPsych': (context) => const ForgotPasswordPsych(),
        '/forgotPasswdPsych2': (context) => const ForgotPasswdPsych2(),
        '/forgotPasswdPsych3': (context) => const ForgotPasswdPsych2(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay of 5 seconds and then navigate to the next screen
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFADD0E1),
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              'empathia.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
