import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labeltext;
  final String prefixIconString;

  CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.labeltext,
      required this.prefixIconString});

  Icon? prefixIcon;

  // Check the value of prefixIconString and set the appropriate icon

  @override
  Widget build(BuildContext context) {
    Widget getPrefixIcon() {
      switch (prefixIconString) {
        case 'email':
          return const Icon(Icons.alternate_email, color: Color(0xFF0097A7));
        case 'phone':
          return const Icon(Icons.phone, color: Color(0xFF0097A7));
        case 'password':
          return const Icon(Icons.password, color: Color(0xFF0097A7));
        default:
          // Handle other cases or provide a default icon
          return const Icon(Icons.account_circle, color: Color(0xFF0097A7));
      }
    }

    return TextFormField(
      controller: controller,
      obscureText: prefixIconString == 'password',
      decoration: InputDecoration(
        labelText: labeltext,

        hintText: hintText,
        fillColor: const Color(0xffeff1f0),
        filled: true,

        prefixIcon: getPrefixIcon(),
        // Icons.alternate_email,
        // color: Color(0xff58C6EC),

        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.black45),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Color(0xFF0097A7)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your $hintText';
        }
        return null; // Return null for valid input
      },
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double Fontsize;
  final FontWeight Weight;
  final Color textcolor;
  const CustomText(
      {super.key,
      required this.text,
      required this.Fontsize,
      required this.Weight,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Rubik Medium',
              fontSize: Fontsize,
              fontWeight: Weight,
              color: textcolor),
        ),
      ],
    );
  }
}
