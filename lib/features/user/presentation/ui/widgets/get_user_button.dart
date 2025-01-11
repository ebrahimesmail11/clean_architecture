import 'package:flutter/material.dart';

class GetUserButton extends StatelessWidget {
  const GetUserButton({required this.onPressed, super.key});
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 16.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const   Text(
          'Get User',
        ),
      ),
    );
  }
}