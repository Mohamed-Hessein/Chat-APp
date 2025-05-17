import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Cusrtomtextfeild extends StatelessWidget {
  Cusrtomtextfeild({
    super.key,
    required this.hinText,
    required this.labelText,
    this.icon,
    this.controler,
    this.onChanged,
    required this.obscureText,
  });
  final labelText;
  final hinText;
  final icon;
  final controler;
  Function(String)? onChanged;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Feild is required';
          }
        },
        onChanged: onChanged,
        controller: controler,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Icon(icon),
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.deepPurple),
          hintText: hinText,
          hintStyle: TextStyle(color: Colors.deepPurple),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
