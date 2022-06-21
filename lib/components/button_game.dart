import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ButtonGame extends StatelessWidget {
  const ButtonGame(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(text, style: headingStyle,),
        )
    );
  }
}
