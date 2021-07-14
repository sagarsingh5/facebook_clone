import 'dart:ui';

import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

import 'user_card.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({
    Key? key,
    required this.users,
  }) : super(key: key);
  final List<User> users;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(width: 8),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: users.length,
                padding: const EdgeInsets.symmetric(vertical: 10),
                itemBuilder: (BuildContext context, int index) {
                  final User user = users[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: UserCard(currentUser: user),
                  );
                }),
          )
        ],
      ),
    );
  }
}
