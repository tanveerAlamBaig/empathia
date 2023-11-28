import 'package:empathia/common/widgets/custom_button.dart';
import 'package:empathia/common/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class ForgotPasswdPsych3 extends StatefulWidget {
  const ForgotPasswdPsych3({super.key});

  @override
  _ForgotPasswdPsych3State createState() => _ForgotPasswdPsych3State();
}

class _ForgotPasswdPsych3State extends State<ForgotPasswdPsych3> {
  final _formKey = GlobalKey<FormState>();
  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xFF0097A7),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Center(
              child: Image.asset(
                'assets/forgotpasswd.png',
                height: 200,
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: const Text(
                'New password',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    controller: newPasswordController,
                    hintText: '',
                    labeltext: 'Enter new password',
                    prefixIconString: 'password',
                  ),
                  const SizedBox(height: 18),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Confirm password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CustomTextField(
                    controller: confirmPasswordController,
                    hintText: '',
                    labeltext: 'Confirm password',
                    prefixIconString: 'password',
                  ),
                  const SizedBox(height: 40.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth >= 600 ? 100 : 20,
                    ),
                    child: CustomButton(
                      text: 'Submit',
                      fontsize: 20,
                      onTap: () {
                        Navigator.of(context, rootNavigator: true)
                            .pushNamed('/homePsych');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
