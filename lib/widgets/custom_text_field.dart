import 'package:flutter/material.dart';
import 'package:rgis/constants/designer_pattern.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.hint,
        this.prefix,
        this.suffix,
        this.obscure = false,
        this.textInputType,
        this.onChanged,
        this.enabled,
        this.controller,
        this.errorText});

  final TextEditingController controller;
  final String hint;
  final Widget prefix;
  final Widget suffix;
  final bool obscure;
  final TextInputType textInputType;
  final Function(String) onChanged;
  final bool enabled;
  final String errorText;

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      obscureText: obscure,
      enabled: enabled,
      onChanged: onChanged,
      textAlignVertical: TextAlignVertical.center,
      keyboardType: textInputType,
      style: TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        errorText: errorText,
        errorStyle: TextStyle(
            color: kColorWine
        ),
        prefixIcon: prefix,
        suffixIcon: suffix,
        hintText: hint,
        contentPadding: EdgeInsets.all(4),
        filled: true,
        fillColor: Colors.grey[200],
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)),
            borderSide: BorderSide(
              color: kColorWine,
            )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
