import 'package:chatzapp/Modals/contact.dart';
import 'package:flutter/material.dart';

class ShatPuble extends StatelessWidget {
  ShatPuble({super.key, required this.messga, this.Created});
  // final  ContactModal messgae;
  ContactModal messga;
  ContactModal? Created;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 16),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF9B59B6),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(32),
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),

        child: Text(messga.message, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class ShatPubleYou extends StatelessWidget {
  ShatPubleYou({super.key, required this.messga});
  // final  ContactModal messgae;
  ContactModal messga;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.only(left: 16, top: 32, bottom: 32, right: 16),
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFFDCC6F5),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(32),
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),

        child: Text(messga.message, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
