import 'package:flutter/material.dart';
import 'package:rebirthdemo/components/constants.dart';

class ListtileForProfile extends StatelessWidget {
  ListtileForProfile({
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(
            icon,
            color: iconColor,
            size: 32,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined, color: iconColor),
          title: Text(
            title,
            style: mcqewsStyle,
          ),
        ),
        Divider(
          color: Colors.grey[400],
          indent: 20,
          endIndent: 20,
          height: 0,
        ),
      ],
    );
  }
}
