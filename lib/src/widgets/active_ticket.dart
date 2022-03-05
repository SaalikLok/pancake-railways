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
    return const Card(child: Text("Active Ticket"));
  }
}
