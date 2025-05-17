import 'package:flutter/material.dart';

class Customedtextfield extends StatelessWidget {
  Customedtextfield({
    super.key,
    required this.onchanedd,
    required this.controler,
  });
  Function(String) onchanedd;
  final controler;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: TextField(
          controller: controler,
          onSubmitted: onchanedd,
          decoration: InputDecoration(
            suffixIcon: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(99),
              ),
              child: Icon(Icons.send, color: Colors.white),
            ),
            hintText: 'Write amessge here.....',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          ),
        ),
      ),
    );
  }
}
