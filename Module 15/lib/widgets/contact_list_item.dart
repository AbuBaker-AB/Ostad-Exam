import 'package:flutter/material.dart';

class ContactListItem extends StatelessWidget {
  final String name;
  final String phone;

  const ContactListItem({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
      color: Colors.grey[200],
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.person,
          color: Colors.brown,
          size: 32,
        ),
        title: Text(
          name,
          style: const TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          phone,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
          ),
        ),
        trailing: const Icon(
          Icons.phone,
          color: Colors.blue,
          size: 28,
        ),
      ),
    );
  }
}