import 'package:flutter/material.dart';

class ActiveTicket extends StatelessWidget {
  const ActiveTicket({
    Key? key,
    required this.ticketTitle,
    required this.icon,
  }) : super(key: key);

  final String ticketTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [Icon(icon), Text(ticketTitle)],
            )));
  }
}
