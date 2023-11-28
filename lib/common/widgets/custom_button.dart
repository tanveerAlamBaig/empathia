import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final double fontsize;
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.color,
    this.fontsize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(
        const Size(300, 55),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),)
      ),
        child: Text(text, style: TextStyle(
          fontSize: fontsize
        ),),
    );
  }
}

