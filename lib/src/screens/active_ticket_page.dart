import 'package:flutter/material.dart';
import 'package:pancake_railways/src/widgets/active_ticket.dart';

class ActiveTicketPage extends StatelessWidget {
  const ActiveTicketPage(
      {Key? key,
      required this.title,
      required this.ticketTitle,
      required this.icon,
      required this.timeOfSelection})
      : super(key: key);

  final String title;
  final String ticketTitle;
  final IconData icon;
  final TimeOfDay timeOfSelection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: [ActiveTicket(ticketTitle: ticketTitle, icon: icon)],
        ));
  }
}
