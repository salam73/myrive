import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final void Function() onPressed;

  const SigninButton({
    super.key,
    required this.child,
    this.width = double.infinity,
    this.height = 50.0,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(160, 92, 147, 1.0),
            Color.fromRGBO(115, 82, 135, 1.0),
          ],
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(onTap: onPressed, child: Center(child: child)),
      ),
    );
  }
}
