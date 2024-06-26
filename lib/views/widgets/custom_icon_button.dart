import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon, this.onPressed,
  });
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 33,
      width: 33,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(8)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 20,
        ),
      ),
    );
  }
}
