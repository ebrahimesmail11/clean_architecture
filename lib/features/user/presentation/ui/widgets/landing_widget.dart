import 'package:flutter/material.dart';

class LandingWidget extends StatelessWidget {
  const LandingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height / 3;
    return Container(
      width: size.width,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(50),
          bottomStart: Radius.circular(50),
        ),
      ),
      child: const Center(
        child: Text(
          'Clean Architecture',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
