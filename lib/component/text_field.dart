import 'package:flutter/material.dart';

class MediTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String helpText;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final bool isPassword;
  final bool isEnabled;
  final bool isReadOnly;
  final Color borderColor;
  // final Function validator;

  MediTextFiled({
    required this.controller,
    required this.hintText,
    required this.helpText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.isPassword,
    required this.isEnabled,
    required this.isReadOnly,
    required this.borderColor,
    // required this.validator
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        readOnly: null == isReadOnly ? false : true,
        obscureText: null == isPassword ? false : true,
        decoration: InputDecoration(
          icon: null == suffixIcon ? Icon(Icons.person) : Icon(suffixIcon),
          hintText: null == hintText ? '' : hintText,
          helperText: null == helpText ? '' : helpText,
        ),
        // validator: validator,
      )
    );
  }

}