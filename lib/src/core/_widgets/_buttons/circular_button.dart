import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.onTap,
    required this.child,
    this.height = 50,
    this.width = 50,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0,
              blurRadius: 5,
              offset: Offset(1, 1.5),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
