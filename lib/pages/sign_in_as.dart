import 'package:flutter/material.dart';

class SignInAs extends StatelessWidget {
  const SignInAs({Key? key}) : super(key: key);

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
                    const SizedBox(height: 100),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign In As',
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
                    Navigator.pushNamed(context, '/signInAsPsych');
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xFF00ACC1),
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    fixedSize: const Size(330, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
                    Navigator.pushNamed(context, '/signInAsPatient');
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: const Color(0xFF00ACC1),
                    backgroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.center,
                    fixedSize: const Size(330, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
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
