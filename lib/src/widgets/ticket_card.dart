import 'package:flutter/material.dart';

// consider making this component stateless, since the state might be handled on the screen level

class TicketCard extends StatefulWidget {
  const TicketCard(
      {Key? key,
      required this.ticketTitle,
      required this.description,
      required this.icon,
      required this.selectTicket})
      : super(key: key);

  final String ticketTitle;
  final String description;
  final IconData icon;
  final Function selectTicket;

  @override
  State<TicketCard> createState() => _TicketCard();
}

class _TicketCard extends State<TicketCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
            padding: const EdgeInsets.all(20),
            child: ListTile(
                leading: Icon(widget.icon, size: 42, color: Colors.blue),
                title: Text(widget.ticketTitle,
                    style: const TextStyle(fontSize: 22)),
                subtitle: Text(widget.description,
                    style: const TextStyle(fontSize: 16, height: 1.5)),
                minVerticalPadding: 10,
                onTap: () => widget.selectTicket(
                    widget.ticketTitle, widget.description, widget.icon)))
      ],
    ));
  }
}
