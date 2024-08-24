import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFild extends StatelessWidget {
  const CustomTextFild(
      {super.key, required this.hint, this.maxlins = 1, this.onSaved, this.onChanged, });
  final String hint;
  final int maxlins;
  final void Function(String?)? onSaved;
final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(  
    initialValue: hint,  
      onChanged: onChanged,
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
