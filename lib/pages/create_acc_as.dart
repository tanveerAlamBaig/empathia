import 'package:empathia/patient/create_account_patient.dart';
import 'package:empathia/psychologist/create_account_psych.dart';
import 'package:flutter/material.dart';

class CreateAccAs extends StatelessWidget {
  const CreateAccAs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF0097A7),
                Color(0xFFADD0E1),
              ],
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Create Account As',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Rubik Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 300),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const CreateAccountPsych(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xFF00ACC1),
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    fixedSize: const Size(300, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Psychologist',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xFF00ACC1),
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const CreateAccountPatient(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xFF00ACC1),
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    fixedSize: const Size(300, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text(
                    'Patient',
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Rubik Medium',
                      color: Color(0xFF00ACC1),
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
