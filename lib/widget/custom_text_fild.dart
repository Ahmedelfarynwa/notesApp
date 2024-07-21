import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild(
      {super.key, required this.hint, this.maxlins = 1, this.onSaved});
  final String hint;
  final int maxlins;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value!.isEmpty ?? true)
          return "feald is requird";
        else {
          return null;
        }
      },
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
