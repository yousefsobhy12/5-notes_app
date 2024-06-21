import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon_button.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title, required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        CustomIconButton(
          icon: icon,
        ),
      ],
    );
  }
}
