//import 'package:flutter/material.dart';
//
//class MotionList extends StatelessWidget {
//  final List<ContactModal> _contactModal;
//
//  ContactsList(this._contactModal);
//
//  @override
//  Widget build(BuildContext context) {
//    return new ListView(
//      padding: new EdgeInsets.symmetric(vertical: 8.0),
//      children: _buildContactsList(),
//    );
//  }
//
//  List<ContactListItem> _buildContactsList() {
//    return _contactModal
//        .map((contact) => new ContactListItem(contact))
//        .toList();
//  }
//}