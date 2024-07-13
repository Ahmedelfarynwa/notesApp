import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild({super.key, required this.hint,   this.maxlins =1});
  final String hint;
  final int maxlins;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlins,
      decoration: InputDecoration(
        hintText: hint,
        enabledBorder: InputBorder.none,
        border: buildBorder(),
        enabled: true,
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );
  }
}
