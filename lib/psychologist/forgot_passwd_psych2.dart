import 'package:flutter/material.dart';
import '../common/widgets/custom_button.dart';
import '../common/widgets/custom_textfield.dart';

class ForgotPasswdPsych2 extends StatefulWidget {
  const ForgotPasswdPsych2({super.key});

  @override
  _ForgotPasswdPsych2State createState() => _ForgotPasswdPsych2State();
}

class _ForgotPasswdPsych2State extends State<ForgotPasswdPsych2> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            // Center(
            //   child: Image.asset(
            //     'assets/otp_icon.png',
            //     fit: BoxFit.fill,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    const Text(
                      'OTP Verification',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'We have sent an OTP to your email. Please enter the OTP to verify your account.',
                      style: TextStyle(fontSize: 18, color: Colors.black38),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTextField(
                        controller: _otpController,
                        hintText: 'Enter OTP',
                        labeltext: 'Enter the OTP sent to your email',
                        prefixIconString: 'vpn_key',
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                            text: 'Verify',
                            fontsize: 20,
                            onTap: () {
                              print('OTP: ${_otpController.text}');
                              Navigator.of(context, rootNavigator: true)
                                  .pushNamed("/forgotPasswdPsych3");
                              // Verify OTP functionality here
                            },
                          ),
                          const SizedBox(height: 10),
                          CustomButton(
                            text: 'Resend',
                            fontsize: 20,
                            onTap: () {
                              print('Resend OTP');
                              // Resend OTP functionality here
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}