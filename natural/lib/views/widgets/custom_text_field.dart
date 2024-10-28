import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function(String) onChanged;
  final IconData icon;
  final bool isPassword;
  final TextInputType? keyboardType;

  const CustomTextField({
    required this.hint,
    required this.onChanged,
    required this.icon,
    this.isPassword = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF95D5B2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: onChanged,
        obscureText: isPassword,
        keyboardType: keyboardType,
        style: const TextStyle(color: Color(0xFF081C15)),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xFF2D6A4F)),
          icon: Icon(icon, color: const Color(0xFF2D6A4F)),
        ),
      ),
    );
  }
}
