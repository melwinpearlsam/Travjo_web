import 'package:flutter/material.dart';
import 'package:travjo_web/constants/style_constants.dart';

class NavBarButton extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  final ButtonStyle? buttonStyle;
  final EdgeInsetsGeometry? padding;
  const NavBarButton(
      {Key? key,
      required this.onPressed,
      this.padding,
      required this.label,
      this.buttonStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          OutlinedButton(
            onPressed: onPressed,
            child: Text(label),
            style: buttonStyle ?? buttonStyleNavBar,
          ),
        ],
      ),
    );
  }
}

class NavBarButtonSimple extends StatelessWidget {
  final void Function() onPressed;
  final String label;
  const NavBarButtonSimple(
      {Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
