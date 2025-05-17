// import 'package:chatzapp/Modals/contact.dart';
// import 'package:chatzapp/Widget/CustomcontactTextfeild.dart';
// import 'package:chatzapp/Widget/catgory.dart';
// import 'package:chatzapp/Widget/customAddContactButtom.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AddContact extends StatefulWidget {
//   AddContact({super.key, this.name, this.email});
//   String? name;
//   String? email;

//   @override
//   State<AddContact> createState() => _AddContactState();
// }

// class _AddContactState extends State<AddContact> {
//   TextEditingController _emailContoler = TextEditingController();

//   TextEditingController _nameContoler = TextEditingController();

//   FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   List<ContactModal> contactList = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurple,
//         title: Text('Add Contact', style: TextStyle(color: Colors.white)),
//       ),

//       body: Column(
//         children: [
//           SizedBox(height: 25),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Text('  ADD NEW CONTACT', style: TextStyle(fontSize: 24)),
//           ),
//           SizedBox(height: 35),
//           Customcontacttextfeild(
//             controler: _emailContoler,
//             icon: Icons.email,
//             hinttext: 'Email',
//             labelText: 'Email',
//           ),
//           SizedBox(height: 15),
//           Customcontacttextfeild(
//             controler: _nameContoler,
//             icon: Icons.person,
//             hinttext: 'Name',
//             labelText: 'Name',
//           ),
//           SizedBox(height: 15),
//           Customaddcontactbuttom(
//             onTap: () async {
//               String name = _nameContoler.text.trim();
//               String email = _emailContoler.text.trim();
//               _firestore.collection('contact').add({
//                 'name': name,
//                 'email': email,
//                 'created-at': DateTime.now(),
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
