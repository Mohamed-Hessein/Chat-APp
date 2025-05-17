import 'package:chatzapp/Modals/contact.dart';
import 'package:chatzapp/Widget/CustomedTextField.dart';
import 'package:chatzapp/Widget/cahtpuble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Chatpage extends StatelessWidget {
  Chatpage({super.key});

  CollectionReference messages = FirebaseFirestore.instance.collection(
    'messages',
  );
  TextEditingController controler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('createdAt').snapshots(),
      builder: (context, snapshot) {
        List<ContactModal> contactList = [];
        if (snapshot.hasData) {
          for (var i = 0; i < snapshot.data!.docs.length; i++) {
            contactList.add(ContactModal.fromJson(snapshot.data!.docs[i]));
          }
        }
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: contactList.length,
                  itemBuilder: (context, index) {
                    return contactList[index].id == email
                        ? ShatPuble(messga: contactList[index])
                        : ShatPubleYou(messga: contactList[index]);
                  },
                ),
              ),
              Customedtextfield(
                controler: controler,
                onchanedd: (data) {
                  var messaged = data.trim();
                  if (messaged.isNotEmpty) {
                    messages.add({
                      'messager': messaged,
                      'createdAt': DateTime.now(),
                      'id': email,
                    });
                    controler.clear();
                  }
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
