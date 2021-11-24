

import 'package:flutter/material.dart';

class PrincipalButton extends StatelessWidget {

  final double buttonTextHeight;
  final String buttonText;
  final void Function() onPressed;

  PrincipalButton({required this.onPressed, required this.buttonTextHeight, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: TextStyle(
            color: Colors.black,
            fontSize: buttonTextHeight,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow),
        ),
      ),
    );
  }
}