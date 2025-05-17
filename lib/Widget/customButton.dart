import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  Custombutton({super.key, required this.text, required this.onTap});
  final String text;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 60,
            child: Center(
              child: Text(text, style: TextStyle(color: Colors.white)),
            ),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
